
struct __TvFlags {
  var refusesFirstResponder: UInt32
  var movedPostingDisableCount: UInt32
  var selectionPostingDisableCount: UInt32
  var dataSourceSetObjectValue: UInt32
  var oldAutoresizesAllColumnsToFit: UInt32
  var delegateSelectionShouldChangeInTableView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectRow: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  var compareWidthWithSuperview: UInt32
  var allowGapRow: UInt32
  var selectionType: UInt32
  var allowsColumnSelection: UInt32
  var allowsMultipleSelection: UInt32
  var allowsEmptySelection: UInt32
  var hasBlurBackgroundViews: UInt32
  var allowsColumnResizing: UInt32
  var allowsColumnReordering: UInt32
  init()
  init(refusesFirstResponder: UInt32, movedPostingDisableCount: UInt32, selectionPostingDisableCount: UInt32, dataSourceSetObjectValue: UInt32, oldAutoresizesAllColumnsToFit: UInt32, delegateSelectionShouldChangeInTableView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectRow: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32, compareWidthWithSuperview: UInt32, allowGapRow: UInt32, selectionType: UInt32, allowsColumnSelection: UInt32, allowsMultipleSelection: UInt32, allowsEmptySelection: UInt32, hasBlurBackgroundViews: UInt32, allowsColumnResizing: UInt32, allowsColumnReordering: UInt32)
}
typealias _TvFlags = __TvFlags
enum NSTableViewDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnAutoresizing
  case UniformColumnAutoresizingStyle
  case SequentialColumnAutoresizingStyle
  case ReverseSequentialColumnAutoresizingStyle
  case LastColumnOnlyAutoresizingStyle
  case FirstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var GridNone: NSTableViewGridLineStyle { get }
  static var SolidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var SolidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  @available(OSX 10.7, *)
  static var DashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
@available(OSX 10.7, *)
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
  case Small
  case Medium
  case Large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.6, *)
  case None
  case Regular
  case SourceList
}
@available(OSX 10.6, *)
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Regular
  case SourceList
  @available(OSX 10.9, *)
  case Gap
}
@available(OSX 10.11, *)
enum NSTableRowActionEdge : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  func setDataSource(aSource: NSTableViewDataSource?)
  func dataSource() -> NSTableViewDataSource?
  func setDelegate(delegate: NSTableViewDelegate?)
  func delegate() -> NSTableViewDelegate?
  var headerView: NSTableHeaderView?
  var cornerView: NSView?
  var allowsColumnReordering: Bool
  var allowsColumnResizing: Bool
  var columnAutoresizingStyle: NSTableViewColumnAutoresizingStyle
  var gridStyleMask: NSTableViewGridLineStyle
  var intercellSpacing: NSSize
  var usesAlternatingRowBackgroundColors: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var gridColor: NSColor
  @available(OSX 10.7, *)
  var rowSizeStyle: NSTableViewRowSizeStyle
  @available(OSX 10.7, *)
  var effectiveRowSizeStyle: NSTableViewRowSizeStyle { get }
  var rowHeight: CGFloat
  func noteHeightOfRowsWithIndexesChanged(indexSet: NSIndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(tableColumn: NSTableColumn)
  func removeTableColumn(tableColumn: NSTableColumn)
  func moveColumn(oldIndex: Int, toColumn newIndex: Int)
  func columnWithIdentifier(identifier: String) -> Int
  func tableColumnWithIdentifier(identifier: String) -> NSTableColumn?
  func tile()
  func sizeToFit()
  func sizeLastColumnToFit()
  func scrollRowToVisible(row: Int)
  func scrollColumnToVisible(column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(OSX 10.6, *)
  func reloadDataForRowIndexes(rowIndexes: NSIndexSet, columnIndexes: NSIndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(anImage: NSImage?, inTableColumn tableColumn: NSTableColumn)
  func indicatorImageInTableColumn(tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRowsWithIndexes(rowIndexes: NSIndexSet, atPoint mouseDownPoint: NSPoint) -> Bool
  func dragImageForRowsWithIndexes(dragRows: NSIndexSet, tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(row: Int, dropOperation: NSTableViewDropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func selectAll(sender: AnyObject?)
  func deselectAll(sender: AnyObject?)
  func selectColumnIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  @NSCopying var selectedColumnIndexes: NSIndexSet { get }
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func deselectColumn(column: Int)
  func deselectRow(row: Int)
  var selectedColumn: Int { get }
  var selectedRow: Int { get }
  func isColumnSelected(column: Int) -> Bool
  func isRowSelected(row: Int) -> Bool
  var numberOfSelectedColumns: Int { get }
  var numberOfSelectedRows: Int { get }
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  @available(OSX 10.6, *)
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  func rectOfColumn(column: Int) -> NSRect
  func rectOfRow(row: Int) -> NSRect
  @available(OSX 10.5, *)
  func columnIndexesInRect(rect: NSRect) -> NSIndexSet
  func rowsInRect(rect: NSRect) -> NSRange
  func columnAtPoint(point: NSPoint) -> Int
  func rowAtPoint(point: NSPoint) -> Int
  func frameOfCellAtColumn(column: Int, row: Int) -> NSRect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(column: Int, row: Int, withEvent theEvent: NSEvent?, select: Bool)
  func drawRow(row: Int, clipRect: NSRect)
  func highlightSelectionInClipRect(clipRect: NSRect)
  func drawGridInClipRect(clipRect: NSRect)
  func drawBackgroundInClipRect(clipRect: NSRect)
  @available(OSX 10.7, *)
  func viewAtColumn(column: Int, row: Int, makeIfNecessary: Bool) -> NSView?
  @available(OSX 10.7, *)
  func rowViewAtRow(row: Int, makeIfNecessary: Bool) -> NSTableRowView?
  @available(OSX 10.7, *)
  func rowForView(view: NSView) -> Int
  @available(OSX 10.7, *)
  func columnForView(view: NSView) -> Int
  @available(OSX 10.7, *)
  func makeViewWithIdentifier(identifier: String, owner: AnyObject?) -> NSView?
  @available(OSX 10.7, *)
  func enumerateAvailableRowViewsUsingBlock(handler: (NSTableRowView, Int) -> Void)
  @available(OSX 10.7, *)
  var floatsGroupRows: Bool
  @available(OSX 10.11, *)
  var rowActionsVisible: Bool
  @available(OSX 10.7, *)
  func beginUpdates()
  @available(OSX 10.7, *)
  func endUpdates()
  @available(OSX 10.7, *)
  func insertRowsAtIndexes(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func removeRowsAtIndexes(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func moveRowAtIndex(oldIndex: Int, toIndex newIndex: Int)
  @available(OSX 10.11, *)
  func hideRowsAtIndexes(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  @available(OSX 10.11, *)
  func unhideRowsAtIndexes(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  @available(OSX 10.11, *)
  @NSCopying var hiddenRowIndexes: NSIndexSet { get }
  @available(OSX 10.8, *)
  func registerNib(nib: NSNib?, forIdentifier identifier: String)
  @available(OSX 10.8, *)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  @available(OSX 10.7, *)
  func didAddRowView(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  func didRemoveRowView(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.10, *)
  var usesStaticContents: Bool
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  func textView(textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event: NSEvent, atIndex charIndex: Int)
  func textView(view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  func textView(view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type: String) -> Bool
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  func textViewDidChangeSelection(notification: NSNotification)
  func textViewDidChangeTypingAttributes(notification: NSNotification)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString: String?) -> Bool
  func textView(textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(view: NSTextView, willCheckTextInRange range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  func undoManagerForTextView(view: NSTextView) -> NSUndoManager?
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  func setAccessibilitySelectedRows(selectedRows: [NSAccessibilityRow])
  func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  func accessibilityColumns() -> [AnyObject]?
  func accessibilityVisibleColumns() -> [AnyObject]?
  func accessibilitySelectedColumns() -> [AnyObject]?
  func accessibilityHeaderGroup() -> String?
  func accessibilitySelectedCells() -> [AnyObject]?
  func accessibilityVisibleCells() -> [AnyObject]?
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
}
@available(OSX 10.7, *)
struct NSTableViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EffectNone: NSTableViewAnimationOptions { get }
  static var EffectFade: NSTableViewAnimationOptions { get }
  static var EffectGap: NSTableViewAnimationOptions { get }
  static var SlideUp: NSTableViewAnimationOptions { get }
  static var SlideDown: NSTableViewAnimationOptions { get }
  static var SlideLeft: NSTableViewAnimationOptions { get }
  static var SlideRight: NSTableViewAnimationOptions { get }
}
protocol NSTableViewDelegate : NSControlTextEditingDelegate {
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didAddRowView rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didRemoveRowView rowView: NSTableRowView, forRow row: Int)
  optional func tableView(tableView: NSTableView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, shouldEditTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, toolTipForCell cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, row: Int, mouseLocation: NSPoint) -> String
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, dataCellForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSCell?
  optional func selectionShouldChangeInTableView(tableView: NSTableView) -> Bool
  optional func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func tableView(tableView: NSTableView, shouldSelectTableColumn tableColumn: NSTableColumn?) -> Bool
  optional func tableView(tableView: NSTableView, mouseDownInHeaderOfTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didClickTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didDragTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, typeSelectStringForTableColumn tableColumn: NSTableColumn?, row: Int) -> String?
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, forString searchString: String) -> Int
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, isGroupRow row: Int) -> Bool
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func tableView(tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableRowActionEdge) -> [NSTableViewRowAction]
  optional func tableViewSelectionDidChange(notification: NSNotification)
  optional func tableViewColumnDidMove(notification: NSNotification)
  optional func tableViewColumnDidResize(notification: NSNotification)
  optional func tableViewSelectionIsChanging(notification: NSNotification)
}
let NSTableViewSelectionDidChangeNotification: String
let NSTableViewColumnDidMoveNotification: String
let NSTableViewColumnDidResizeNotification: String
let NSTableViewSelectionIsChangingNotification: String
@available(OSX 10.7, *)
let NSTableViewRowViewKey: String
protocol NSTableViewDataSource : NSObjectProtocol {
  optional func numberOfRowsInTableView(tableView: NSTableView) -> Int
  optional func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject?
  optional func tableView(tableView: NSTableView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forRowIndexes rowIndexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(tableView: NSTableView, writeRowsWithIndexes rowIndexes: NSIndexSet, toPasteboard pboard: NSPasteboard) -> Bool
  optional func tableView(tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWithIndexes indexSet: NSIndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use View Based TableView and -viewAtColumn:row:")
  func preparedCellAtColumn(column: Int, row: Int) -> NSCell?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldBeginEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldEndEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidBeginEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidEndEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidChange(notification: NSNotification)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; observe the window’s firstResponder for focus change notifications")
  func shouldFocusCell(cell: NSCell, atColumn column: Int, row: Int) -> Bool
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use a View Based TableView and observe the window.firstResponder")
  func focusedColumn() -> Int
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; make a particular view the first responder with [window makeFirstResponder:view] to focus it.")
  func setFocusedColumn(focusedColumn: Int)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; directly interact with a particular view as required and call -performClick: on it, if necessary")
  func performClickOnCellAtColumn(column: Int, row: Int)
}
