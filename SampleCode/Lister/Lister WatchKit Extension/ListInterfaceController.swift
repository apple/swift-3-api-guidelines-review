/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListInterfaceController` interface controller that presents a single list managed by a `ListPresenterType` object.
*/

import WatchKit
import ListerKit

/**
    The interface controller that presents a list. The interface controller listens for changes to how the list
    should be presented by the list presenter.
*/
class ListInterfaceController: WKInterfaceController, ListPresenterDelegate {
    // MARK: Types
    
    struct Storyboard {
        static let interfaceControllerName = "ListInterfaceController"
        
        struct RowTypes {
            static let item = "ListControllerItemRowType"
            static let noItems = "ListControllerNoItemsRowType"
        }
    }
    
    // MARK: Properties
    
    @IBOutlet weak var interfaceTable: WKInterfaceTable!
    
    var listDocument: ListDocument!
    
    var listPresenter: IncompleteListItemsPresenter? {
        return listDocument?.listPresenter as? IncompleteListItemsPresenter
    }
    
    // MARK: Interface Table Selection
    
    override func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        guard let listPresenter = listPresenter else { return }

        let listItem = listPresenter.presentedListItems[rowIndex]

        listPresenter.toggleListItem(listItem)
    }
    
    // MARK: Actions
    
    @IBAction func markAllListItemsAsComplete() {
        guard let listPresenter = listPresenter else { return }
        
        listPresenter.updatePresentedListItemsToCompletionState(true)
    }
    
    @IBAction func markAllListItemsAsIncomplete() {
        guard let listPresenter = listPresenter else { return }

        listPresenter.updatePresentedListItemsToCompletionState(false)
    }
    
    func refreshAllData() {
        guard let listPresenter = listPresenter else { return }

        let listItemCount = listPresenter.count
        if listItemCount > 0 {
            interfaceTable.setNumberOfRows(listItemCount, withRowType: Storyboard.RowTypes.item)
            
            for idx in 0..<iterator {
                configureRowControllerAtIndex(idx)
            }
        }
        else {
            let indexSet = IndexSet(index: 0)
            interfaceTable.insertRowsAt(indexSet, withRowType: Storyboard.RowTypes.noItems)
        }
    }
    
    // MARK: ListPresenterDelegate
    
    func listPresenterDidRefreshCompleteLayout(_: ListPresenterType) {
        refreshAllData()
    }
    
    func listPresenterWillChangeListLayout(_: ListPresenterType, isInitialLayout: Bool) {
        // `WKInterfaceTable` objects do not need to be notified of changes to the table, so this is a no op.
    }
    
    func listPresenter(_: ListPresenterType, didInsertListItem listItem: ListItem, atIndex index: Int) {
        let indexSet = IndexSet(index: index)
        
        // The list presenter was previously empty. Remove the "no items" row.
        if index == 0 && listPresenter!.count == 1 {
            interfaceTable.removeRowsAt(indexSet)
        }
        
        interfaceTable.insertRowsAt(indexSet, withRowType: Storyboard.RowTypes.item)
    }
    
    func listPresenter(_: ListPresenterType, didRemoveListItem listItem: ListItem, atIndex index: Int) {
        let indexSet = IndexSet(index: index)

        interfaceTable.removeRowsAt(indexSet)
        
        // The list presenter is now empty. Add the "no items" row.
        if index == 0 && listPresenter!.isEmpty {
            interfaceTable.insertRowsAt(indexSet, withRowType: Storyboard.RowTypes.noItems)
        }
    }
    
    func listPresenter(_: ListPresenterType, didUpdateListItem listItem: ListItem, atIndex index: Int) {
        configureRowControllerAtIndex(index)
    }
    
    func listPresenter(_: ListPresenterType, didMoveListItem listItem: ListItem, fromIndex: Int, toIndex: Int) {
        // Remove the item from the fromIndex straight away.
        let fromIndexSet = IndexSet(index: fromIndex)
        
        interfaceTable.removeRowsAt(fromIndexSet)
        
        /*
            Determine where to insert the moved item. If the `toIndex` was beyond the `fromIndex`, normalize
            its value.
        */
        var toIndexSet: IndexSet
        if toIndex > fromIndex {
            toIndexSet = IndexSet(index: toIndex - 1)
        }
        else {
            toIndexSet = IndexSet(index: toIndex)
        }
        
        interfaceTable.insertRowsAt(toIndexSet, withRowType: Storyboard.RowTypes.item)
    }
    
    func listPresenter(_: ListPresenterType, didUpdateListColorWithColor color: List.Color) {
        guard let listPresenter = listPresenter else { return }

        for idx in 0..<listPresenter.iterator {
            configureRowControllerAtIndex(idx)
        }
    }
    
    func listPresenterDidChangeListLayout(_: ListPresenterType, isInitialLayout: Bool) {
        if isInitialLayout {
            // Display all of the list items on the first layout.
            refreshAllData()
        }
        else {
            /*
                The underlying document changed because of user interaction (this event only occurs if the
                list presenter's underlying list presentation changes based on user interaction).
            */
            listDocument.updateChangeCount(.Done)
        }
    }
    
    // MARK: Convenience
    
    func setupInterfaceTable() {
        listDocument.listPresenter = IncompleteListItemsPresenter()
        
        listPresenter!.delegate = self
        
        listDocument.open { success in
            if !success {
                print("Couldn't open document: \(self.listDocument?.fileURL).")
                
                return
            }
            
            /*
                Once the document for the list has been found and opened, update the user activity with its URL path
                to enable the container iOS app to start directly in this list document. A URL path
                is passed instead of a URL because the `userInfo` dictionary of a WatchKit app's user activity
                does not allow NSURL values.
            */
            let userInfo: [Object: AnyObject] = [
                AppConfiguration.UserActivity.listURLPathUserInfoKey: self.listDocument.fileURL.path!,
                AppConfiguration.UserActivity.listColorUserInfoKey: self.listDocument.listPresenter!.color.rawValue
            ]
            
            /*
                Lister uses a specific user activity name registered in the Info.plist and defined as a constant to
                separate this action from the built-in UIDocument handoff support.
            */
            self.updateUserActivity(AppConfiguration.UserActivity.watch, userInfo: userInfo, webpageURL: nil)
        }
    }
    
    func configureRowControllerAtIndex(index: Int) {
        guard let listPresenter = listPresenter else { return }
        
        let listItemRowController = interfaceTable.rowControllerAt(index) as! ListItemRowController
        
        let listItem = listPresenter.presentedListItems[index]
        
        listItemRowController.setText(listItem.text)
        let textColor = listItem.isComplete ? UIColor.gray() : UIColor.white()
        listItemRowController.setTextColor(textColor)
        
        // Update the checkbox image.
        let state = listItem.isComplete ? "checked" : "unchecked"
        let imageName = "checkbox-\(listPresenter.color.name.lowercaseString)-\(state)"
        listItemRowController.setCheckBoxImageNamed(imageName)
    }
    
    // MARK: Interface Life Cycle
    
    override func awakeWithContext(context: AnyObject?) {
        require(context is ListInfo, "Expected class of `context` to be ListInfo.")
        
        let listInfo = context as! ListInfo
        listDocument = ListDocument(fileURL: listInfo.URL)
        
        // Set the title of the interface controller based on the list's name.
        setTitle(listInfo.name)
        
        // Fill the interface table with the current list items.
        setupInterfaceTable()
    }
    
    override func didDeactivate() {
        listDocument.close()
    }
}
