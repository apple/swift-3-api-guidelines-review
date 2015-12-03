/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `ListViewController` class displays the contents of a list document.
*/

import Cocoa
import NotificationCenter
import ListerKit

class ListViewController: NSViewController, ColorPaletteViewDelegate, ListItemViewDelegate, ListPresenterDelegate, AddItemViewControllerDelegate {
    // MARK: Types
    
    // String constants scope to ListViewController.
    struct TableViewConstants {
        struct ViewIdentifiers {
            static let listItemViewIdentifier = "ListItemViewIdentifier"
            static let noListItemViewIdentifier = "NoListItemViewIdentifier"
        }
        
        static let pasteboardType = "public.item.lister"
        static let dragType = "listerDragType"
    }
    
    // MARK: Properties
    
    @IBOutlet weak var tableView: NSTableView!
    
    @IBOutlet weak var colorPaletteView: ColorPaletteView!
    
    weak var document: ListDocument? {
        didSet {
            if document == nil { return }

            let listPresenter = AllListItemsPresenter()
            listPresenter.delegate = self

            document!.listPresenter = listPresenter
            
            listPresenter.undoManager = document?.undoManager
        }
    }

    var listPresenter: AllListItemsPresenter? {
        return document?.listPresenter as? AllListItemsPresenter
    }
    
    // MARK: View Life Cycle
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        // Load the current data for the table view.
        tableView.reloadData()

        // Enable dragging for the list items of our specific type.
        tableView.registerForDraggedTypes([TableViewConstants.dragType, NSPasteboardTypeString])
        tableView.setDraggingSourceOperationMask(.Move, forLocal: true)
    }

    // MARK: NSTableViewDelegate

    func numberOfRowsIn(tableView: NSTableView) -> Int {
        if document == nil { return 0 }

        guard let listPresenter = listPresenter else { return 0 }
        
        return listPresenter.isEmpty ? 1 : listPresenter.count
    }
    
    func tableView(tableView: NSTableView, viewFor viewForTableColumn: NSTableColumn, row: Int) -> NSView {
        guard let listPresenter = listPresenter else { return tableView.makeViewWithIdentifier(TableViewConstants.ViewIdentifiers.noListItemViewIdentifier, owner: nil)! }
        
        if listPresenter.isEmpty {
            return tableView.makeViewWithIdentifier(TableViewConstants.ViewIdentifiers.noListItemViewIdentifier, owner: nil)!
        }
        
        let listItemView = tableView.makeViewWithIdentifier(TableViewConstants.ViewIdentifiers.listItemViewIdentifier, owner: nil) as! ListItemView
        
        let listItem = listPresenter.presentedListItems[row]
        
        configureListItemView(listItemView, forListItem: listItem)
        
        return listItemView
    }
    
    // Only allow rows to be selectable if there are items in the list.
    func tableView(tableView: NSTableView, shouldSelectRow: Int) -> Bool {
        return !listPresenter!.isEmpty
    }
    
    func tableView(tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation {
        // Don't allow moving/copying the empty list item.
        let pasteboard = info.draggingPasteboard()
        
        var result = NSDragOperation.None
        
        // Only allow drops above.
        if dropOperation == .Above {
            // If the drag source is our table view, it's a move.
            if info.draggingSource() === tableView {
                if let listItems = listItemsWithListerPasteboardType(pasteboard) {
                    // Only allow a move if there's a single item being moved, and the list allows it.
                    if listItems.count == 1 && listPresenter!.canMove(listItems.first!, to: row) {
                        result = .Move
                    }
                }
            }
            else {
                if listItemsWithListerPasteboardType(pasteboard) != nil || listItemsWithStringPasteboardType(pasteboard) != nil {
                    result = .Copy
                }
            }
        }
        
        return result
    }
    
    func tableView(tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool {
        let pasteboard = info.draggingPasteboard()
        
        if info.draggingSource() === tableView {
            let listItems = listItemsWithListerPasteboardType(pasteboard)

            precondition(listItems != nil && listItems!.count == 1, "There must be exactly one moved item.")
            precondition(dropOperation == .Above, "Only .Above drop operations are allowed.")
            
            let listItem = listItems!.first!

            let fromIndex = listPresenter!.presentedListItems.indexOf(listItem)!
            
            var normalizedToIndex = row
            if fromIndex < row {
                normalizedToIndex--
            }

            listPresenter!.move(listItem, to: normalizedToIndex)
        }
        else {
            if let listItems = listItemsWithListerPasteboardType(pasteboard) {
                // When the items are pasted, make sure that they are uniquely referenced.
                for listItem in listItems {
                    listItem.refreshIdentity()
                }

                listPresenter!.insert(listItems)
            }
            else {
                let listItems = listItemsWithStringPasteboardType(pasteboard)
                
                precondition(listItems != nil, "`listItems` must not be nil.")
                
                listPresenter!.insert(listItems!)
            }
        }
        
        return true
    }
    
    func tableView(tableView: NSTableView, writeRowsWith indexes: NSIndexSet, to pasteboard: NSPasteboard) -> Bool {
        guard let listPresenter = listPresenter else { return false }
        
        if listPresenter.isEmpty {
            return false
        }
        
        let listItems = listPresenter.listItemsAt(indexes)

        write(listItems, to: pasteboard)
        
        return true
    }
    
    // MARK: NSPasteboard Convenience
    
    func listItemsWithListerPasteboardType(pasteboard: NSPasteboard, refreshesItemIdentities: Bool = false) -> [ListItem]? {
        if pasteboard.canReadItemWithDataConformingToTypes([TableViewConstants.pasteboardType]) {
            for pasteboardItem in pasteboard.pasteboardItems! {

                if let itemsData = pasteboardItem.dataForType(TableViewConstants.pasteboardType) {
                    var allItems = [ListItem]()

                    let pasteboardListItems = NSKeyedUnarchiver.unarchiveObjectWith(itemsData) as! [ListItem]
                    
                    for item in pasteboardListItems {
                        if refreshesItemIdentities {
                            item.refreshIdentity()
                        }
                        
                        allItems += [item]
                    }
                    
                    return allItems
                }

            }
        }
        
        return nil
    }
    
    func listItemsWithStringPasteboardType(pasteboard: NSPasteboard) -> [ListItem]? {
        if pasteboard.canReadItemWithDataConformingToTypes([NSPasteboardTypeString]) {
            var allItems = [ListItem]()

            for pasteboardItem in pasteboard.pasteboardItems! {
                if let targetType = pasteboardItem.availableTypeFrom([NSPasteboardTypeString]),
                   let pasteboardString = pasteboardItem.stringForType(targetType) {
                    allItems += ListFormatting.listItemsFrom(pasteboardString)
                }
            }
            
            return allItems
        }
        
        return nil
    }
    
    func write(listItems: [ListItem], to pasteboard: NSPasteboard) {
        pasteboard.declareTypes([TableViewConstants.dragType, NSPasteboardTypeString], owner: self)

        // Save `listItems` as data.
        let data = NSKeyedArchiver.archivedDataWithRootObject(listItems)
        pasteboard.setData(data, forType: TableViewConstants.pasteboardType)

        // Save `listItems` as a string.
        let listItemsString = ListFormatting.stringFrom(listItems)
        pasteboard.setString(listItemsString, forType: NSPasteboardTypeString)
    }
    
    // MARK: Cut / Copy / Paste / Delete
    
    func cut(sender: AnyObject) {
        let selectedRowIndexes = tableView.selectedRowIndexes
        
        guard let listPresenter = listPresenter else { return }
        
        if selectedRowIndexes.count > 0 {
            let listItems = listPresenter.listItemsAt(selectedRowIndexes)
            
            write(listItems, to: NSPasteboard.general())
            
            listPresenter.remove(listItems)
        }
    }
    
    func copy(sender: AnyObject) {
        let selectedRowIndexes = tableView.selectedRowIndexes
        
        guard let listPresenter = listPresenter else { return }
        
        if selectedRowIndexes.count > 0 {
            let listItems = listPresenter.listItemsAt(selectedRowIndexes)

            write(listItems, to: NSPasteboard.general())
        }
    }
    
    func paste(sender: AnyObject) {
        var listItems = listItemsWithListerPasteboardType(NSPasteboard.general(), refreshesItemIdentities: true)
        
        // If there were no pasted items that are of the Lister pasteboard type, see if there are any String contents on the pasteboard.
        if listItems == nil {
            listItems = listItemsWithStringPasteboardType(NSPasteboard.general())
        }
        
        guard let listPresenter = listPresenter else { return }

        // Only copy/paste if items were inserted.
        if listItems != nil && listItems!.count > 0 {
            listPresenter.insert(listItems!)
        }
    }
    
    override func keyDown(event: NSEvent) {
        guard let listPresenter = listPresenter else { return }
        
        // Only handle delete keyboard event.
        if event.charactersIgnoringModifiers == String(Character(UnicodeScalar(NSDeleteCharacter))) {
            let listItems = listPresenter.listItemsAt(tableView.selectedRowIndexes)
            
            listPresenter.remove(listItems)
        }
    }
    
    // MARK: IBActions
    
    @IBAction func markAllListItemsAsComplete(sender: NSButton) {
        listPresenter?.updatePresentedListItemsToCompletionState(true)
    }
    
    @IBAction func markAllListItemsAsIncomplete(sender: NSButton) {
        listPresenter?.updatePresentedListItemsToCompletionState(false)
    }
    
    // MARK:  ListItemViewDelegate

    func listItemViewDidToggleCompletionState(listItemView: ListItemView) {
        guard let listPresenter = listPresenter else { return }
        
        let row = tableView.rowFor(listItemView)

        let listItem = listPresenter.presentedListItems[row]
        
        listPresenter.toggle(listItem)
    }
    
    func listItemViewTextDidEndEditing(listItemView: ListItemView) {
        let row = tableView.rowFor(listItemView)
        
        if row == -1 {
            return
        }
        
        let cleansedString = listItemView.stringValue.byTrimmingCharactersIn(NSCharacterSet.whitespaceAndNewline())
        
        guard let listPresenter = listPresenter else { return }
        
        let listItem = listPresenter.presentedListItems[row]
        
        // If a list item's text is empty after editing, delete it.
        if cleansedString.isEmpty {
            listPresenter.remove(listItem)
        }
        else {
            listPresenter.updateListItem(listItem, withText: listItemView.stringValue)
        }
    }
    
    // MARK: AddItemViewControllerDelegate

    func addItemViewController(addItemViewController: AddItemViewController, didCreateNewItemWithText text: String) {
        let newListItem = ListItem(text: text)
        
        guard let listPresenter = listPresenter else { return }
        
        listPresenter.insert(newListItem)
    }
    
    // MARK: ColorPaletteViewDelegate

    func colorPaletteViewDidChangeSelectedColor(colorPaletteView: ColorPaletteView) {
        guard let listPresenter = listPresenter else { return }
        
        listPresenter.color = colorPaletteView.selectedColor
    }
    
    // MARK: ListPresenterDelegate
    
    func listPresenterDidRefreshCompleteLayout(listPresenter: ListPresenterType) {
        tableView.reloadData()

        colorPaletteView.selectedColor = listPresenter.color
    }
    
    func listPresenterWillChangeListLayout(_: ListPresenterType, isInitialLayout: Bool) {
        tableView.beginUpdates()
    }

    func listPresenter(_: ListPresenterType, didInsert listItem: ListItem, at index: Int) {
        let indexSet = NSIndexSet(index: index)
        
        guard let listPresenter = listPresenter else { return }
        
        // Hide the "No items in list" row.
        if index == 0 && listPresenter.count == 1 {
            tableView.removeRowsAt(indexSet, withAnimation: .SlideUp)
        }
        
        tableView.insertRowsAt(indexSet, withAnimation: .SlideDown)
    }

    func listPresenter(_: ListPresenterType, didRemove listItem: ListItem, at index: Int) {
        let indexSet = NSIndexSet(index: index)
        
        tableView.removeRowsAt(indexSet, withAnimation: .SlideUp)
        
        guard let listPresenter = listPresenter else { return }
        
        // Show the "No items in list" row.
        if index == 0 && listPresenter.isEmpty {
            tableView.insertRowsAt(indexSet, withAnimation: .SlideDown)
        }
    }

    func listPresenter(_: ListPresenterType, didUpdateListItem listItem: ListItem, at index: Int) {
        if let listItemView = tableView.viewAtColumn(0, row: index, makeIfNecessary: false) as? ListItemView {
            configureListItemView(listItemView, forListItem: listItem)
        }
    }

    func listPresenter(_: ListPresenterType, didMove listItem: ListItem, from fromIndex: Int, to toIndex: Int) {
        tableView.moveRowAt(fromIndex, to: toIndex)
    }
    
    func listPresenter(_: ListPresenterType, didUpdateListColorWith color: List.Color) {
        colorPaletteView.selectedColor = color

        /**
            Update the list item views with the newly selected color. Only update the
            `ListItemView` subclasses since they only have a tint color.
        */
        tableView.enumerateAvailableRowViewsUsingBlock { rowView, _ in
            if let listItemView = rowView.viewAtColumn(0) as? ListItemView, colorValue = self.listPresenter?.color.colorValue {
                listItemView.tintColor = colorValue
            }
        }
    }

    func listPresenterDidChangeListLayout(_: ListPresenterType, isInitialLayout: Bool) {
        tableView.endUpdates()

        if !isInitialLayout {
            updateWidget()
        }
    }
    
    // MARK: NCWidget Support

    func updateWidget() {
        TodayListManager.fetchTodayDocumentURLWithCompletionHandler { url in
            let currentDocumentURL = self.document?.fileURL

            if url == currentDocumentURL {
                NCWidgetController.widgetController().setHasContent(true, forWidgetWithBundleIdentifier: AppConfiguration.Extensions.widgetBundleIdentifier)
            }
        }
    }
    
    // MARK: Convenience
    
    func configureListItemView(listItemView: ListItemView, forListItem listItem: ListItem) {
        listItemView.isComplete = listItem.isComplete
        
        listItemView.tintColor = listPresenter!.color.colorValue
        
        listItemView.stringValue = listItem.text
        
        listItemView.delegate = self
    }
}
