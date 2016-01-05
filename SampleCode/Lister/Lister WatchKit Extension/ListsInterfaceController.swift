/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListInterfaceController` that presents a single list managed by a `ListPresenterType` instance.
*/

import WatchKit
import ListerKit

class ListsInterfaceController: WKInterfaceController, ListsControllerDelegate {
    // MARK: Types
    
    struct Storyboard {
        struct RowTypes {
            static let list = "ListsInterfaceControllerListRowType"
            static let noLists = "ListsInterfaceControllerNoListsRowType"
        }
        
        struct Segues {
            static let listSelection = "ListsInterfaceControllerListSelectionSegue"
        }
    }
    
    // MARK: Properties
    
    @IBOutlet weak var interfaceTable: WKInterfaceTable!
    
    var listsController: ListsController!

    // MARK: Initializers
    
    override init() {
        super.init()

        listsController = AppConfiguration.shared.listsControllerForCurrentConfigurationWithPathExtension(AppConfiguration.listerFileExtension)

        let noListsIndexSet = NSIndexSet(index: 0)
        interfaceTable.insertRowsAt(noListsIndexSet, withRowType: Storyboard.RowTypes.noLists)
        
        if AppConfiguration.shared.isFirstLaunch {
            print("Lister does not currently support configuring a storage option before the iOS app is launched. Please launch the iOS app first. See the Release Notes section in README.md for more information.")
        }
    }
    
    // MARK: ListsControllerDelegate

    func listsController(listsController: ListsController, didInsert listInfo: ListInfo, at index: Int) {
        let indexSet = NSIndexSet(index: index)
        
        // The lists controller was previously empty. Remove the "no lists" row.
        if index == 0 && listsController.count == 1 {
            interfaceTable.removeRowsAt(indexSet)
        }
        
        interfaceTable.insertRowsAt(indexSet, withRowType: Storyboard.RowTypes.list)

        configureRowControllerAt(index)
    }
    
    func listsController(listsController: ListsController, didRemove listInfo: ListInfo, at index: Int) {
        let indexSet = NSIndexSet(index: index)
        
        // The lists controller is now empty. Add the "no lists" row.
        if index == 0 && listsController.count == 0 {
            interfaceTable.insertRowsAt(indexSet, withRowType: Storyboard.RowTypes.noLists)
        }
        
        interfaceTable.removeRowsAt(indexSet)
    }
    
    func listsController(listsController: ListsController, didUpdateListInfo listInfo: ListInfo, at index: Int) {
        configureRowControllerAt(index)
    }

    // MARK: Segues
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        if segueIdentifier == Storyboard.Segues.listSelection {
            let listInfo = listsController[rowIndex]

            return listInfo
        }
        
        return nil
    }
    
    // MARK: Convenience
    
    func configureRowControllerAt(index: Int) {
        let listRowController = interfaceTable.rowControllerAt(index) as! ColoredTextRowController
        
        let listInfo = listsController[index]
        
        listRowController.setText(listInfo.name)
        
        listInfo.fetchInfoWithCompletionHandler() {
            /*
                The fetchInfoWithCompletionHandler(_:) method calls its completion handler on a background
                queue, dispatch back to the main queue to make UI updates.
            */
            dispatch_async(dispatch_get_main_queue()) {
                let listRowController = self.interfaceTable.rowControllerAt(index) as! ColoredTextRowController

                listRowController.setColor(listInfo.color!.colorValue)
            }
        }
    }
    
    // MARK: Interface Life Cycle

    override func willActivate() {
        // If the `ListsController` is activating, we should invalidate any pending user activities.
        invalidateUserActivity()
        
        listsController.delegate = self

        listsController.startSearching()
    }

    override func didDeactivate() {
        listsController.stopSearching()
        
        listsController.delegate = nil
    }
    
    override func handleUserActivity(userInfo: [NSObject: AnyObject]?) {
        /*
            The Lister watch app only supports continuing activities where
            `AppConfiguration.UserActivity.listURLPathUserInfoKey` is provided.
        */
        let listInfoFilePath = userInfo?[AppConfiguration.UserActivity.listURLPathUserInfoKey] as? String
        
        // If no `listInfoFilePath` is found, there is no activity of interest to handle.
        if listInfoFilePath == nil {
            return
        }
        
        let listInfoURL = NSURL(fileURLWithPath: listInfoFilePath!, isDirectory: false)
        // Create a `ListInfo` that represents the list at `listInfoURL`.
        let listInfo = ListInfo(url: listInfoURL)
        
        // Present a `ListInterfaceController`.
        pushControllerWithName(ListInterfaceController.Storyboard.interfaceControllerName, context: listInfo)
    }
}
