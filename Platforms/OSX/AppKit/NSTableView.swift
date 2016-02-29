
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
  init(refusesFirstResponder refusesFirstResponder: UInt32, movedPostingDisableCount movedPostingDisableCount: UInt32, selectionPostingDisableCount selectionPostingDisableCount: UInt32, dataSourceSetObjectValue dataSourceSetObjectValue: UInt32, oldAutoresizesAllColumnsToFit oldAutoresizesAllColumnsToFit: UInt32, delegateSelectionShouldChangeInTableView delegateSelectionShouldChangeInTableView: UInt32, delegateShouldSelectTableColumn delegateShouldSelectTableColumn: UInt32, delegateShouldSelectRow delegateShouldSelectRow: UInt32, delegateShouldEditTableColumn delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell delegateWillDisplayCell: UInt32, compareWidthWithSuperview compareWidthWithSuperview: UInt32, allowGapRow allowGapRow: UInt32, selectionType selectionType: UInt32, allowsColumnSelection allowsColumnSelection: UInt32, allowsMultipleSelection allowsMultipleSelection: UInt32, allowsEmptySelection allowsEmptySelection: UInt32, hasBlurBackgroundViews hasBlurBackgroundViews: UInt32, allowsColumnResizing allowsColumnResizing: UInt32, allowsColumnReordering allowsColumnReordering: UInt32)
}
typealias _TvFlags = __TvFlags
enum NSTableViewDropOperation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case on
  case above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noColumnAutoresizing
  case uniformColumnAutoresizingStyle
  case sequentialColumnAutoresizingStyle
  case reverseSequentialColumnAutoresizingStyle
  case lastColumnOnlyAutoresizingStyle
  case firstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var gridNone: NSTableViewGridLineStyle { get }
  static var solidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var solidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  @available(OSX 10.7, *)
  static var dashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
@available(OSX 10.7, *)
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
  case small
  case medium
  case large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.6, *)
  case none
  case regular
  case sourceList
}
@available(OSX 10.6, *)
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case regular
  case sourceList
  @available(OSX 10.9, *)
  case gap
}
@available(OSX 10.11, *)
enum NSTableRowActionEdge : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  func setDataSource(_ aSource: NSTableViewDataSource?)
  func dataSource() -> NSTableViewDataSource?
  func setDelegate(_ delegate: NSTableViewDelegate?)
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
  func noteHeightOfRows(withIndexesChanged indexSet: NSIndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(_ tableColumn: NSTableColumn)
  func removeTableColumn(_ tableColumn: NSTableColumn)
  func moveColumn(_ oldIndex: Int, toColumn newIndex: Int)
  func column(withIdentifier identifier: String) -> Int
  func tableColumn(withIdentifier identifier: String) -> NSTableColumn?
  func tile()
  func sizeLastColumnToFit()
  func scrollRowToVisible(_ row: Int)
  func scrollColumnToVisible(_ column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(OSX 10.6, *)
  func reloadData(forRowIndexes rowIndexes: NSIndexSet, columnIndexes columnIndexes: NSIndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(_ anImage: NSImage?, in tableColumn: NSTableColumn)
  func indicatorImage(in tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRows(with rowIndexes: NSIndexSet, at mouseDownPoint: NSPoint) -> Bool
  func dragImageForRows(with dragRows: NSIndexSet, tableColumns tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func setDraggingSourceOperationMask(_ mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(_ row: Int, dropOperation dropOperation: NSTableViewDropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func deselectAll(_ sender: AnyObject?)
  func selectColumnIndexes(_ indexes: NSIndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(_ indexes: NSIndexSet, byExtendingSelection extend: Bool)
  @NSCopying var selectedColumnIndexes: NSIndexSet { get }
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func deselectColumn(_ column: Int)
  func deselectRow(_ row: Int)
  var selectedColumn: Int { get }
  var selectedRow: Int { get }
  func isColumnSelected(_ column: Int) -> Bool
  func isRowSelected(_ row: Int) -> Bool
  var numberOfSelectedColumns: Int { get }
  var numberOfSelectedRows: Int { get }
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  @available(OSX 10.6, *)
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  func rect(ofColumn column: Int) -> NSRect
  func rect(ofRow row: Int) -> NSRect
  @available(OSX 10.5, *)
  func columnIndexes(in rect: NSRect) -> NSIndexSet
  func rows(in rect: NSRect) -> NSRange
  func column(at point: NSPoint) -> Int
  func row(at point: NSPoint) -> Int
  func frameOfCell(atColumn column: Int, row row: Int) -> NSRect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(_ column: Int, row row: Int, with theEvent: NSEvent?, select select: Bool)
  func drawRow(_ row: Int, clipRect clipRect: NSRect)
  func highlightSelection(inClipRect clipRect: NSRect)
  func drawGrid(inClipRect clipRect: NSRect)
  func drawBackground(inClipRect clipRect: NSRect)
  @available(OSX 10.7, *)
  func view(atColumn column: Int, row row: Int, makeIfNecessary makeIfNecessary: Bool) -> NSView?
  @available(OSX 10.7, *)
  func rowView(atRow row: Int, makeIfNecessary makeIfNecessary: Bool) -> NSTableRowView?
  @available(OSX 10.7, *)
  func row(for view: NSView) -> Int
  @available(OSX 10.7, *)
  func column(for view: NSView) -> Int
  @available(OSX 10.7, *)
  func make(withIdentifier identifier: String, owner owner: AnyObject?) -> NSView?
  @available(OSX 10.7, *)
  func enumerateAvailableRowViews(_ handler: (NSTableRowView, Int) -> Void)
  @available(OSX 10.7, *)
  var floatsGroupRows: Bool
  @available(OSX 10.11, *)
  var rowActionsVisible: Bool
  @available(OSX 10.7, *)
  func beginUpdates()
  @available(OSX 10.7, *)
  func endUpdates()
  @available(OSX 10.7, *)
  func insertRows(at indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func removeRows(at indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func moveRow(at oldIndex: Int, to newIndex: Int)
  @available(OSX 10.11, *)
  func hideRows(at indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  func unhideRows(at indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  @NSCopying var hiddenRowIndexes: NSIndexSet { get }
  @available(OSX 10.8, *)
  func register(_ nib: NSNib?, forIdentifier identifier: String)
  @available(OSX 10.8, *)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  @available(OSX 10.7, *)
  func didAdd(_ rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  func didRemove(_ rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.10, *)
  var usesStaticContents: Bool
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  func textView(_ textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event event: NSEvent, at charIndex: Int)
  func textView(_ view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  func textView(_ view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type type: String) -> Bool
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  func textViewDidChangeSelection(_ notification: NSNotification)
  func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(_ textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(_ view: NSTextView, menu menu: NSMenu, for event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, willCheckTextIn range: NSRange, options options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject] = [:], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(_ textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(_ textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  func undoManager(for view: NSTextView) -> NSUndoManager?
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, endedAt screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeys(for session: NSDraggingSession) -> Bool
  func accessibilityHeaderGroup() -> String?
}
@available(OSX 10.7, *)
struct NSTableViewAnimationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  optional func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row row: Int) -> NSView?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func tableView(_ tableView: NSTableView, willDisplayCell cell: AnyObject, for tableColumn: NSTableColumn?, row row: Int)
  optional func tableView(_ tableView: NSTableView, shouldEdit tableColumn: NSTableColumn?, row row: Int) -> Bool
  optional func tableView(_ tableView: NSTableView, toolTipFor cell: NSCell, rect rect: NSRectPointer, tableColumn tableColumn: NSTableColumn?, row row: Int, mouseLocation mouseLocation: NSPoint) -> String
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, row row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTrackCell cell: NSCell, for tableColumn: NSTableColumn?, row row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, dataCellFor tableColumn: NSTableColumn?, row row: Int) -> NSCell?
  optional func selectionShouldChange(in tableView: NSTableView) -> Bool
  optional func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func tableView(_ tableView: NSTableView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func tableView(_ tableView: NSTableView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, didClick tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, didDrag tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, typeSelectStringFor tableColumn: NSTableColumn?, row row: Int) -> String?
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, for searchString: String) -> Int
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, isGroupRow row: Int) -> Bool
  @available(OSX 10.6, *)
  optional func tableView(_ tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func tableView(_ tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func tableView(_ tableView: NSTableView, rowActionsForRow row: Int, edge edge: NSTableRowActionEdge) -> [NSTableViewRowAction]
  optional func tableViewSelectionDidChange(_ notification: NSNotification)
  optional func tableViewColumnDidMove(_ notification: NSNotification)
  optional func tableViewColumnDidResize(_ notification: NSNotification)
  optional func tableViewSelectionIsChanging(_ notification: NSNotification)
}
let NSTableViewSelectionDidChangeNotification: String
let NSTableViewColumnDidMoveNotification: String
let NSTableViewColumnDidResizeNotification: String
let NSTableViewSelectionIsChangingNotification: String
@available(OSX 10.7, *)
let NSTableViewRowViewKey: String
protocol NSTableViewDataSource : NSObjectProtocol {
  optional func numberOfRows(in tableView: NSTableView) -> Int
  optional func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row row: Int) -> AnyObject?
  optional func tableView(_ tableView: NSTableView, setObjectValue object: AnyObject?, for tableColumn: NSTableColumn?, row row: Int)
  optional func tableView(_ tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forRowIndexes rowIndexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(_ tableView: NSTableView, writeRowsWith rowIndexes: NSIndexSet, to pboard: NSPasteboard) -> Bool
  optional func tableView(_ tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(_ tableView: NSTableView, acceptDrop info: NSDraggingInfo, row row: Int, dropOperation dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(_ tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWith indexSet: NSIndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use View Based TableView and -viewAtColumn:row:")
  func preparedCell(atColumn column: Int, row row: Int) -> NSCell?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldBeginEditing(_ textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldEndEditing(_ textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidBeginEditing(_ notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidEndEditing(_ notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidChange(_ notification: NSNotification)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; observe the window’s firstResponder for focus change notifications")
  func shouldFocusCell(_ cell: NSCell, atColumn column: Int, row row: Int) -> Bool
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use a View Based TableView and observe the window.firstResponder")
  func focusedColumn() -> Int
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; make a particular view the first responder with [window makeFirstResponder:view] to focus it.")
  func setFocusedColumn(_ focusedColumn: Int)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; directly interact with a particular view as required and call -performClick: on it, if necessary")
  func performClickOnCell(atColumn column: Int, row row: Int)
}
