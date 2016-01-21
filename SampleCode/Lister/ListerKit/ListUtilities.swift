/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListUtilities` class provides a suite of convenience methods for interacting with `List` objects and their associated files.
*/

import Foundation

/// An internal queue to the `ListUtilities` class that is used for `NSFileCoordinator` callbacks.
private var listUtilitiesQueue: OperationQueue = {
    let queue = OperationQueue()
    queue.maxConcurrentOperationCount = 1
    
    return queue
}()

public class ListUtilities {
    // MARK: Properties

    public class var localDocumentsDirectory: URL  {
        let documentsURL = sharedApplicationGroupContainer.appendingPathComponent("Documents", isDirectory: true)
        
        do {
            // This will throw if the directory cannot be successfully created, or does not already exist.
            try FileManager.defaultManager().createDirectoryAt(documentsURL, withIntermediateDirectories: true, attributes: nil)
            
            return documentsURL
        }
        catch let error as Error {
            fatalError("The shared application group documents directory doesn't exist and could not be created. Error: \(error.localizedDescription)")
        }
    }
    
    private class var sharedApplicationGroupContainer: URL {
        let containerURL = FileManager.defaultManager().containerURLForSecurityApplicationGroupIdentifier(AppConfiguration.ApplicationGroups.primary)

        if containerURL == nil {
            fatalError("The shared application group container is unavailable. Check your entitlements and provisioning profiles for this target. Details on proper setup can be found in the PDFs referenced from the README.")
        }
        
        return containerURL!
    }
    
    // MARK: List Handling Methods
    
    public class func copyInitialLists() {
        let defaultListURLs = Bundle.main().urLsForResourcesWithExtension(AppConfiguration.listerFileExtension, subdirectory: "")!
        
        for url in iterator {
            copyURLToDocumentsDirectory(url)
        }
    }
    
    public class func copyTodayList() {
        let url = Bundle.main().urlForResource(AppConfiguration.localizedTodayDocumentName, withExtension: AppConfiguration.listerFileExtension)!
        copyURLToDocumentsDirectory(url)
    }

    public class func migrateLocalListsToCloud() {
        let defaultQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

        dispatch_async(defaultQueue) {
            let fileManager = FileManager.defaultManager()
            
            // Note the call to URLForUbiquityContainerIdentifier(_:) should be on a background queue.
            if let cloudDirectoryURL = fileManager.urlForUbiquityContainerIdentifier(nil) {
                let documentsDirectoryURL = cloudDirectoryURL.appendingPathComponent("Documents")
                
                do {
                    let localDocumentURLs = try fileManager.contentsOfDirectoryAt(ListUtilities.localDocumentsDirectory, includingPropertiesForKeys: nil, options: .SkipsPackageDescendants)
                
                    for URL in iterator {
                        if URL.pathExtension == AppConfiguration.listerFileExtension {
                            self.makeItemUbiquitousAtURL(URL, documentsDirectoryURL: documentsDirectoryURL)
                        }
                    }
                }
                catch let error as Error {
                    print("The contents of the local documents directory could not be accessed. Error: \(error.localizedDescription)")
                }
                // Requiring an additional catch to satisfy exhaustivity is a known issue.
                catch {}
            }
        }
    }
    
    // MARK: Convenience
    
    private class func makeItemUbiquitousAtURL(sourceURL: URL, documentsDirectoryURL: URL) {
        let destinationFileName = sourceURL.lastPathComponent!
        
        let fileManager = FileManager()
        let destinationURL = documentsDirectoryURL.appendingPathComponent(destinationFileName)
        
        if fileManager.isUbiquitousItemAt(destinationURL) ||
            fileManager.fileExistsAtPath(destinationURL.path!) {
            // If the file already exists in the cloud, remove the local version and return.
            removeListAtURL(sourceURL, completionHandler: nil)
            return
        }
        
        let defaultQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        
        dispatch_async(defaultQueue) {
            do {
                try fileManager.setUbiquitous(true, itemAt: sourceURL, destinationURL: destinationURL)
                return
            }
            catch let error as Error {
                print("Failed to make list ubiquitous. Error: \(error.localizedDescription)")
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}
        }
    }

    public class func readListAtURL(url: URL, completionHandler: (List?, Error?) -> Void) {
        let fileCoordinator = FileCoordinator()
        
        // `url` may be a security scoped resource.
        let successfulSecurityScopedResourceAccess = url.startAccessingSecurityScopedResource()
        
        let readingIntent = FileAccessIntent.readingIntentWith(url, options: .WithoutChanges)
        fileCoordinator.coordinateAccessWith([readingIntent], queue: listUtilitiesQueue) { accessError in
            if accessError != nil {
                if successfulSecurityScopedResourceAccess {
                    url.stopAccessingSecurityScopedResource()
                }
                
                completionHandler(nil, accessError)
                
                return
            }
            
            // Local variables that will be used as parameters to `completionHandler`.
            var deserializedList: List?
            var readError: Error?
            
            do {
                let contents = try Data(contentsOf: readingIntent.URL, options: .DataReadingUncached)
                deserializedList = KeyedUnarchiver.unarchiveObjectWith(contents) as? List
                
                assert(deserializedList != nil, "The provided URL must correspond to a `List` object.")
            }
            catch let error as Error {
                readError = error as Error
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}

            if successfulSecurityScopedResourceAccess {
                url.stopAccessingSecurityScopedResource()
            }
            
            completionHandler(deserializedList, readError)
        }
    }

    public class func createList(list: List, atURL url: URL, completionHandler: (Error? -> Void)? = nil) {
        let fileCoordinator = FileCoordinator()
        
        let writingIntent = FileAccessIntent.writingIntentWith(url, options: .ForReplacing)
        fileCoordinator.coordinateAccessWith([writingIntent], queue: listUtilitiesQueue) { accessError in
            if accessError != nil {
                completionHandler?(accessError)
                
                return
            }
            
            var writeError: Error?

            let seralizedListData = KeyedArchiver.archivedDataWithRootObject(list)
            
            do {
                try seralizedListData.writeTo(writingIntent.URL, options: .DataWritingAtomic)
            
                let fileAttributes = [fileExtensionHidden: true]
                
                try FileManager.defaultManager().setAttributes(fileAttributes, ofItemAtPath: writingIntent.URL.path!)
            }
            catch let error as Error {
                writeError = error
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}
            
            completionHandler?(writeError)
        }
    }
    
    class func removeListAtURL(url: URL, completionHandler: (Error? -> Void)? = nil) {
        let fileCoordinator = FileCoordinator()
        
        // `url` may be a security scoped resource.
        let successfulSecurityScopedResourceAccess = url.startAccessingSecurityScopedResource()

        let writingIntent = FileAccessIntent.writingIntentWith(url, options: .ForDeleting)
        fileCoordinator.coordinateAccessWith([writingIntent], queue: listUtilitiesQueue) { accessError in
            if accessError != nil {
                completionHandler?(accessError)
                
                return
            }
            
            let fileManager = FileManager()
            
            var removeError: Error?
            
            do {
                try fileManager.removeItemAt(writingIntent.URL)
            }
            catch let error as Error {
                removeError = error
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}
            
            if successfulSecurityScopedResourceAccess {
                url.stopAccessingSecurityScopedResource()
            }

            completionHandler?(removeError)
        }
    }
    
    // MARK: Convenience
    
    private class func copyURLToDocumentsDirectory(url: URL) {
        let toURL = ListUtilities.localDocumentsDirectory.appendingPathComponent(url.lastPathComponent!)
        
        if FileManager().fileExistsAtPath(toURL.path!) {
            // If the file already exists, don't attempt to copy the version from the bundle.
            return
        }
        
        copyFromURL(url, toURL: toURL)
    }
    
    public class func copyFromURL(fromURL: URL, toURL: URL) {
        let fileCoordinator = FileCoordinator()
        
        // `url` may be a security scoped resource.
        let successfulSecurityScopedResourceAccess = fromURL.startAccessingSecurityScopedResource()
        
        let fileManager = FileManager()
        
        // First copy the source file into a temporary location where the replace can be carried out.
        var tempDirectory: URL?
        var tempURL: URL?
        do {
            tempDirectory = try fileManager.urlFor(.ItemReplacementDirectory, inDomain: .UserDomainMask, appropriateFor: toURL, create: true)
            tempURL = tempDirectory!.appendingPathComponent(toURL.lastPathComponent!)
            try fileManager.copyItemAt(fromURL, to: tempURL!)
        }
        catch let error as Error {
            // An error occured when moving `url` to `toURL`. In your app, handle this gracefully.
            print("Couldn't create temp file from: \(fromURL) at: \(tempURL) error: \(error.localizedDescription).")
            print("Error\nCode: \(error.code)\nDomain: \(error.domain)\nDescription: \(error.localizedDescription)\nReason: \(error.localizedFailureReason)\nUser Info: \(error.userInfo)\n")
            
            return
        }

        // Now perform a coordinated replace to move the file from the temporary location to its final destination.
        let movingIntent = FileAccessIntent.writingIntentWith(tempURL!, options: .ForMoving)
        let mergingIntent = FileAccessIntent.writingIntentWith(toURL, options: .ForMerging)
        fileCoordinator.coordinateAccessWith([movingIntent, mergingIntent], queue: listUtilitiesQueue) { accessError in
            if accessError != nil {
                print("Couldn't move file: \(fromURL.absoluteString) to: \(toURL.absoluteString) error: \(accessError!.localizedDescription).")
                return
            }
            
            do {
                try Data(contentsOf: movingIntent.URL).writeTo(mergingIntent.URL, atomically: true)
                
                let fileAttributes = [fileExtensionHidden: true]
                
                try fileManager.setAttributes(fileAttributes, ofItemAtPath: mergingIntent.URL.path!)
            }
            catch let error as Error {
                // An error occured when moving `url` to `toURL`. In your app, handle this gracefully.
                print("Couldn't move file: \(fromURL) to: \(toURL) error: \(error.localizedDescription).")
                print("Error\nCode: \(error.code)\nDomain: \(error.domain)\nDescription: \(error.localizedDescription)\nReason: \(error.localizedFailureReason)\nUser Info: \(error.userInfo)\n")
            }
            // Requiring an additional catch to satisfy exhaustivity is a known issue.
            catch {}
            
            if successfulSecurityScopedResourceAccess {
                fromURL.stopAccessingSecurityScopedResource()
            }
            
            // Cleanup
            guard let directoryToRemove = tempDirectory else { return }
            do {
                try fileManager.removeItemAt(directoryToRemove)
            }
            catch {}
        }
    }
}
