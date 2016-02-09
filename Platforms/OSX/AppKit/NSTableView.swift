
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
  case on
  case above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noColumnAutoresizing
  case uniformColumnAutoresizingStyle
  case sequentialColumnAutoresizingStyle
  case reverseSequentialColumnAutoresizingStyle
  case lastColumnOnlyAutoresizingStyle
  case firstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var gridNone: NSTableViewGridLineStyle { get }
  static var solidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var solidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  @available(OSX 10.7, *)
  static var dashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
@available(OSX 10.7, *)
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
  case small
  case medium
  case large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.6, *)
  case none
  case regular
  case sourceList
}
@available(OSX 10.6, *)
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case regular
  case sourceList
  @available(OSX 10.9, *)
  case gap
}
@available(OSX 10.11, *)
enum NSTableRowActionEdge : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  init(frame frameRect: Rect)
  init?(coder: Coder)
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
  var intercellSpacing: Size
  var usesAlternatingRowBackgroundColors: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var gridColor: NSColor
  @available(OSX 10.7, *)
  var rowSizeStyle: NSTableViewRowSizeStyle
  @available(OSX 10.7, *)
  var effectiveRowSizeStyle: NSTableViewRowSizeStyle { get }
  var rowHeight: CGFloat
  func noteHeightOfRows(indexesChanged indexSet: IndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(tableColumn: NSTableColumn)
  func removeTableColumn(tableColumn: NSTableColumn)
  func moveColumn(oldIndex: Int, toColumn newIndex: Int)
  func columnWith(identifier identifier: String) -> Int
  func tableColumnWith(identifier identifier: String) -> NSTableColumn?
  func tile()
  func sizeToFit()
  func sizeLastColumnToFit()
  func scrollRowToVisible(row: Int)
  func scrollColumnToVisible(column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(OSX 10.6, *)
  func reloadDataFor(rowIndexes rowIndexes: IndexSet, columnIndexes: IndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [SortDescriptor]
  func setIndicatorImage(anImage: NSImage?, in tableColumn: NSTableColumn)
  func indicatorImageIn(tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRows(withIndexes rowIndexes: IndexSet, at mouseDownPoint: Point) -> Bool
  func dragImageForRows(dragRows: IndexSet, tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: PointPointer) -> NSImage
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(row: Int, dropOperation: NSTableViewDropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func selectAll(sender: AnyObject?)
  func deselectAll(sender: AnyObject?)
  func selectColumnIndexes(indexes: IndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(indexes: IndexSet, byExtendingSelection extend: Bool)
  @NSCopying var selectedColumnIndexes: IndexSet { get }
  @NSCopying var selectedRowIndexes: IndexSet { get }
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
  func rectOf(column column: Int) -> Rect
  func rectOf(row row: Int) -> Rect
  @available(OSX 10.5, *)
  func columnIndexesIn(rect: Rect) -> IndexSet
  func rowsIn(rect: Rect) -> NSRange
  func columnAt(point: Point) -> Int
  func rowAt(point: Point) -> Int
  func frameOfCellAt(column column: Int, row: Int) -> Rect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(column: Int, row: Int, withEvent theEvent: NSEvent?, select: Bool)
  func drawRow(row: Int, clip clipRect: Rect)
  func highlightSelectionInClip(clipRect: Rect)
  func drawGridInClip(clipRect: Rect)
  func drawBackgroundInClip(clipRect: Rect)
  @available(OSX 10.7, *)
  func viewAt(column column: Int, row: Int, makeIfNecessary: Bool) -> NSView?
  @available(OSX 10.7, *)
  func rowViewAt(row row: Int, makeIfNecessary: Bool) -> NSTableRowView?
  @available(OSX 10.7, *)
  func rowFor(view: NSView) -> Int
  @available(OSX 10.7, *)
  func columnFor(view: NSView) -> Int
  @available(OSX 10.7, *)
  func make(identifier identifier: String, owner: AnyObject?) -> NSView?
  @available(OSX 10.7, *)
  func enumerateAvailableRowViews(handler: (NSTableRowView, Int) -> Void)
  @available(OSX 10.7, *)
  var floatsGroupRows: Bool
  @available(OSX 10.11, *)
  var rowActionsVisible: Bool
  @available(OSX 10.7, *)
  func beginUpdates()
  @available(OSX 10.7, *)
  func endUpdates()
  @available(OSX 10.7, *)
  func insertRowsAt(indexes: IndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func removeRowsAt(indexes: IndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func moveRow(at oldIndex: Int, to newIndex: Int)
  @available(OSX 10.11, *)
  func hideRowsAt(indexes: IndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  func unhideRowsAt(indexes: IndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  @NSCopying var hiddenRowIndexes: IndexSet { get }
  @available(OSX 10.8, *)
  func register(nib: NSNib?, forIdentifier identifier: String)
  @available(OSX 10.8, *)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  @available(OSX 10.7, *)
  func didAdd(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  func didRemove(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.10, *)
  var usesStaticContents: Bool
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: Rect, event: NSEvent, at charIndex: Int)
  func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [Value], toCharacterRanges newSelectedCharRanges: [Value]) -> [Value]
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [Value], replacementStrings: [String]?) -> Bool
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  func textViewDidChangeSelection(notification: Notification)
  func textViewDidChangeTypingAttributes(notification: Notification)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<TextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:], results: [TextCheckingResult], orthography: Orthography, wordCount: Int) -> [TextCheckingResult]
  @available(OSX 10.7, *)
  func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> URL?
  @available(OSX 10.8, *)
  func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  func undoManagerFor(view: NSTextView) -> UndoManager?
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: Point)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: Point)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: Point, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
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
  static var effectNone: NSTableViewAnimationOptions { get }
  static var effectFade: NSTableViewAnimationOptions { get }
  static var effectGap: NSTableViewAnimationOptions { get }
  static var slideUp: NSTableViewAnimationOptions { get }
  static var slideDown: NSTableViewAnimationOptions { get }
  static var slideLeft: NSTableViewAnimationOptions { get }
  static var slideRight: NSTableViewAnimationOptions { get }
}
protocol NSTableViewDelegate : NSControlTextEditingDelegate {
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func tableView(tableView: NSTableView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, shouldEdit tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, toolTipFor cell: NSCell, rect: RectPointer, tableColumn: NSTableColumn?, row: Int, mouseLocation: Point) -> String
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, dataCellFor tableColumn: NSTableColumn?, row: Int) -> NSCell?
  optional func selectionShouldChangeIn(tableView: NSTableView) -> Bool
  optional func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: IndexSet) -> IndexSet
  optional func tableView(tableView: NSTableView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func tableView(tableView: NSTableView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didClick tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didDrag tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, typeSelectStringFor tableColumn: NSTableColumn?, row: Int) -> String?
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, forString searchString: String) -> Int
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, isGroupRow row: Int) -> Bool
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func tableView(tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableRowActionEdge) -> [NSTableViewRowAction]
  optional func tableViewSelectionDidChange(notification: Notification)
  optional func tableViewColumnDidMove(notification: Notification)
  optional func tableViewColumnDidResize(notification: Notification)
  optional func tableViewSelectionIsChanging(notification: Notification)
}
let NSTableViewSelectionDidChangeNotification: String
let NSTableViewColumnDidMoveNotification: String
let NSTableViewColumnDidResizeNotification: String
let NSTableViewSelectionIsChangingNotification: String
@available(OSX 10.7, *)
let NSTableViewRowViewKey: String
protocol NSTableViewDataSource : ObjectProtocol {
  optional func numberOfRowsIn(tableView: NSTableView) -> Int
  optional func tableView(tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> AnyObject?
  optional func tableView(tableView: NSTableView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [SortDescriptor])
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: Point, forRowIndexes rowIndexes: IndexSet)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, endedAt screenPoint: Point, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(tableView: NSTableView, writeRowsWith rowIndexes: IndexSet, to pboard: NSPasteboard) -> Bool
  optional func tableView(tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: URL, forDraggedRowsWith indexSet: IndexSet) -> [String]
}
extension Object {
}
extension NSTableView {
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use View Based TableView and -viewAtColumn:row:")
  func preparedCellAt(column column: Int, row: Int) -> NSCell?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldBeginEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldEndEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidBeginEditing(notification: Notification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidEndEditing(notification: Notification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidChange(notification: Notification)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; observe the window’s firstResponder for focus change notifications")
  func shouldFocusCell(cell: NSCell, atColumn column: Int, row: Int) -> Bool
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use a View Based TableView and observe the window.firstResponder")
  func focusedColumn() -> Int
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; make a particular view the first responder with [window makeFirstResponder:view] to focus it.")
  func setFocusedColumn(focusedColumn: Int)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; directly interact with a particular view as required and call -performClick: on it, if necessary")
  func performClickOnCellAt(column column: Int, row: Int)
}
