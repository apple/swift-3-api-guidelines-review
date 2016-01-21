/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListDocument` class is a `UIDocument` subclass that represents a list. `ListDocument` manages the serialization / deserialization of the list object in addition to a list presenter.
*/

import UIKit
import WatchConnectivity

/// Protocol that allows a list document to notify other objects of it being deleted.
@objc public protocol ListDocumentDelegate {
    func listDocumentWasDeleted(listDocument: ListDocument)
}

public class ListDocument: UIDocument {
    // MARK: Properties

    public weak var delegate: ListDocumentDelegate?
    
    // Use a default, empty list.
    public var listPresenter: ListPresenterType?

    // MARK: Initializers
    
    public init(fileURL URL: URL, listPresenter: ListPresenterType? = nil) {
        self.listPresenter = listPresenter

        super.init(fileURL: URL)
    }

    // MARK: Serialization / Deserialization

    override public func loadFromContents(contents: AnyObject, ofType typeName: String?) throws {
        if let unarchivedList = KeyedUnarchiver.unarchiveObjectWith(contents as! Data) as? List {
            /*
                This method is called on the queue that the `openWithCompletionHandler(_:)` method was called
                on (typically, the main queue). List presenter operations are main queue only, so explicitly
                call on the main queue.
            */
            dispatch_async(dispatch_get_main_queue()) {
                self.listPresenter?.setList(unarchivedList)
                
                return
            }

            return
        }
        
        throw Error(domain: cocoaErrorDomain, code: fileReadCorruptFileError, userInfo: [
            localizedDescriptionKey: NSLocalizedString("Could not read file", comment: "Read error description"),
            localizedFailureReasonErrorKey: NSLocalizedString("File was in an invalid format", comment: "Read failure reason")
        ])
    }

    override public func contentsForType(typeName: String) throws -> AnyObject {
        if let archiveableList = listPresenter?.archiveableList {
            return KeyedArchiver.archivedDataWithRootObject(archiveableList)
        }

        throw Error(domain: "ListDocumentDomain", code: -1, userInfo: [
            localizedDescriptionKey: NSLocalizedString("Could not archive list", comment: "Archive error description"),
            localizedFailureReasonErrorKey: NSLocalizedString("No list presenter was available for the document", comment: "Archive failure reason")
        ])
    }
    
    // MARK: Saving
    
    override public func saveTo(url: URL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)?) {
        super.saveTo(url, forSaveOperation: saveOperation) { success in
            // On a successful save, transfer the file to the paired watch if appropriate.
            if WCSession.isSupported() && WCSession.defaultSession().watchAppInstalled && success {
                let fileCoordinator = FileCoordinator()
                let readingIntent = FileAccessIntent.readingIntentWith(url)
                fileCoordinator.coordinateAccessWith([readingIntent], queue: OperationQueue()) { accessError in
                    if accessError != nil {
                        return
                    }
                    
                    let session = WCSession.defaultSession()
                    
                    for transfer in session.iterator {
                        if transfer.file.fileURL == readingIntent.URL {
                            transfer.cancel()
                            break
                        }
                    }
                    
                    session.transferFile(readingIntent.URL, metadata: nil)
                }
            }
            
            completionHandler?(success)
        }
    }
    
    // MARK: Deletion

    override public func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: Error? -> Void) {
        super.accommodatePresentedItemDeletionWithCompletionHandler(completionHandler)
        
        delegate?.listDocumentWasDeleted(self)
    }
    
    // MARK: Handoff
    
    override public func updateUserActivityState(userActivity: UserActivity) {
        super.updateUserActivityState(userActivity)
        
        if let rawColorValue = listPresenter?.color.rawValue {
            userActivity.addUserInfoEntriesFrom([
                AppConfiguration.UserActivity.listColorUserInfoKey: rawColorValue
            ])
        }
    }
}
