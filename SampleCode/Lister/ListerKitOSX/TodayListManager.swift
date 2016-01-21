/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `TodayListManager` class implements convenience methods to create and retrieve the Today list document from the user's ubiquity container.
*/

import Foundation

public class TodayListManager {
    /**
        Fetches the ubiquity container URL for the Today list document. If one isn't found, the block is invoked
        with a `nil` value.
    */
    public class func fetchTodayDocumentURLWithCompletionHandler(completionHandler: (url: URL?) -> Void) {
        let defaultQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

        dispatch_async(defaultQueue) {
            let url = FileManager.defaultManager().urlForUbiquityContainerIdentifier(nil)

            let successURL = self.createTodayDocumentURLWithContainerURL(url)
            
            completionHandler(url: successURL)
        }
    }

    public class func createTodayDocumentURLWithContainerURL(containerURL: URL?) -> URL? {
        if containerURL == nil {
            return nil
        }

        let todayDocumentFolderURL = containerURL!.appendingPathComponent("Documents")

        let todayDocumentURL = todayDocumentFolderURL.appendingPathComponent(AppConfiguration.localizedTodayDocumentName).appendingPathExtension(AppConfiguration.listerFileExtension)

        let fileManager = FileManager.defaultManager()

        if fileManager.fileExistsAtPath(todayDocumentURL.path!) {
            return todayDocumentURL
        }

        do {
            try fileManager.createDirectoryAt(todayDocumentFolderURL, withIntermediateDirectories: true, attributes: nil)
            
            let sampleTodayDocumentURL = Bundle(forClass: self).urlForResource("Today", withExtension: AppConfiguration.listerFileExtension)
            
            try fileManager.copyItemAt(sampleTodayDocumentURL!, to: todayDocumentURL)
            // Make the file's extension hidden.
            try fileManager.setAttributes([fileExtensionHidden: true], ofItemAtPath: todayDocumentURL.path!)
            
            return todayDocumentURL
        }
        catch {
            return nil
        }
    }
}
