
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
  case On
  case Above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnAutoresizing
  case UniformColumnAutoresizingStyle
  case SequentialColumnAutoresizingStyle
  case ReverseSequentialColumnAutoresizingStyle
  case LastColumnOnlyAutoresizingStyle
  case FirstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var GridNone: NSTableViewGridLineStyle { get }
  static var SolidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var SolidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  @available(OSX 10.7, *)
  static var DashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
@available(OSX 10.7, *)
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
  case Small
  case Medium
  case Large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.6, *)
  case None
  case Regular
  case SourceList
}
@available(OSX 10.6, *)
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Regular
  case SourceList
  @available(OSX 10.9, *)
  case Gap
}
@available(OSX 10.11, *)
enum NSTableRowActionEdge : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
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
  func noteHeightOfRowsWithIndexesChanged(_ indexSet: NSIndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(_ tableColumn: NSTableColumn)
  func removeTableColumn(_ tableColumn: NSTableColumn)
  func moveColumn(_ oldIndex: Int, toColumn newIndex: Int)
  func columnWithIdentifier(_ identifier: String) -> Int
  func tableColumnWithIdentifier(_ identifier: String) -> NSTableColumn?
  func tile()
  func sizeLastColumnToFit()
  func scrollRowToVisible(_ row: Int)
  func scrollColumnToVisible(_ column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(OSX 10.6, *)
  func reloadDataForRowIndexes(_ rowIndexes: NSIndexSet, columnIndexes columnIndexes: NSIndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(_ anImage: NSImage?, inTableColumn tableColumn: NSTableColumn)
  func indicatorImageInTableColumn(_ tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRowsWithIndexes(_ rowIndexes: NSIndexSet, atPoint mouseDownPoint: NSPoint) -> Bool
  func dragImageForRowsWithIndexes(_ dragRows: NSIndexSet, tableColumns tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
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
  func rectOfColumn(_ column: Int) -> NSRect
  func rectOfRow(_ row: Int) -> NSRect
  @available(OSX 10.5, *)
  func columnIndexesInRect(_ rect: NSRect) -> NSIndexSet
  func rowsInRect(_ rect: NSRect) -> NSRange
  func columnAtPoint(_ point: NSPoint) -> Int
  func rowAtPoint(_ point: NSPoint) -> Int
  func frameOfCellAtColumn(_ column: Int, row row: Int) -> NSRect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(_ column: Int, row row: Int, withEvent theEvent: NSEvent?, select select: Bool)
  func drawRow(_ row: Int, clipRect clipRect: NSRect)
  func highlightSelectionInClipRect(_ clipRect: NSRect)
  func drawGridInClipRect(_ clipRect: NSRect)
  func drawBackgroundInClipRect(_ clipRect: NSRect)
  @available(OSX 10.7, *)
  func viewAtColumn(_ column: Int, row row: Int, makeIfNecessary makeIfNecessary: Bool) -> NSView?
  @available(OSX 10.7, *)
  func rowViewAtRow(_ row: Int, makeIfNecessary makeIfNecessary: Bool) -> NSTableRowView?
  @available(OSX 10.7, *)
  func rowForView(_ view: NSView) -> Int
  @available(OSX 10.7, *)
  func columnForView(_ view: NSView) -> Int
  @available(OSX 10.7, *)
  func makeViewWithIdentifier(_ identifier: String, owner owner: AnyObject?) -> NSView?
  @available(OSX 10.7, *)
  func enumerateAvailableRowViewsUsingBlock(_ handler: (NSTableRowView, Int) -> Void)
  @available(OSX 10.7, *)
  var floatsGroupRows: Bool
  @available(OSX 10.11, *)
  var rowActionsVisible: Bool
  @available(OSX 10.7, *)
  func beginUpdates()
  @available(OSX 10.7, *)
  func endUpdates()
  @available(OSX 10.7, *)
  func insertRowsAtIndexes(_ indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func removeRowsAtIndexes(_ indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func moveRowAtIndex(_ oldIndex: Int, toIndex newIndex: Int)
  @available(OSX 10.11, *)
  func hideRowsAtIndexes(_ indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  @available(OSX 10.11, *)
  func unhideRowsAtIndexes(_ indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  @available(OSX 10.11, *)
  @NSCopying var hiddenRowIndexes: NSIndexSet { get }
  @available(OSX 10.8, *)
  func registerNib(_ nib: NSNib?, forIdentifier identifier: String)
  @available(OSX 10.8, *)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  @available(OSX 10.7, *)
  func didAddRowView(_ rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  func didRemoveRowView(_ rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.10, *)
  var usesStaticContents: Bool
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  func textView(_ textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(_ textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event event: NSEvent, atIndex charIndex: Int)
  func textView(_ view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  func textView(_ view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type type: String) -> Bool
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  func textViewDidChangeSelection(_ notification: NSNotification)
  func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(_ textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  func textView(_ textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(_ view: NSTextView, menu menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, willCheckTextInRange range: NSRange, options options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(_ textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(_ textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  func undoManagerForTextView(_ view: NSTextView) -> NSUndoManager?
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysForDraggingSession(_ session: NSDraggingSession) -> Bool
  func accessibilityHeaderGroup() -> String?
}
@available(OSX 10.7, *)
struct NSTableViewAnimationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  optional func tableView(_ tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row row: Int) -> NSView?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, didAddRowView rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, didRemoveRowView rowView: NSTableRowView, forRow row: Int)
  optional func tableView(_ tableView: NSTableView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, row row: Int)
  optional func tableView(_ tableView: NSTableView, shouldEditTableColumn tableColumn: NSTableColumn?, row row: Int) -> Bool
  optional func tableView(_ tableView: NSTableView, toolTipForCell cell: NSCell, rect rect: NSRectPointer, tableColumn tableColumn: NSTableColumn?, row row: Int, mouseLocation mouseLocation: NSPoint) -> String
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, row row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, row row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, dataCellForTableColumn tableColumn: NSTableColumn?, row row: Int) -> NSCell?
  optional func selectionShouldChangeInTableView(_ tableView: NSTableView) -> Bool
  optional func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func tableView(_ tableView: NSTableView, shouldSelectTableColumn tableColumn: NSTableColumn?) -> Bool
  optional func tableView(_ tableView: NSTableView, mouseDownInHeaderOfTableColumn tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, didClickTableColumn tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, didDragTableColumn tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, typeSelectStringForTableColumn tableColumn: NSTableColumn?, row row: Int) -> String?
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, forString searchString: String) -> Int
  @available(OSX 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
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
  optional func numberOfRowsInTableView(_ tableView: NSTableView) -> Int
  optional func tableView(_ tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row row: Int) -> AnyObject?
  optional func tableView(_ tableView: NSTableView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, row row: Int)
  optional func tableView(_ tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forRowIndexes rowIndexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func tableView(_ tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(_ tableView: NSTableView, writeRowsWithIndexes rowIndexes: NSIndexSet, toPasteboard pboard: NSPasteboard) -> Bool
  optional func tableView(_ tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(_ tableView: NSTableView, acceptDrop info: NSDraggingInfo, row row: Int, dropOperation dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(_ tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWithIndexes indexSet: NSIndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use View Based TableView and -viewAtColumn:row:")
  func preparedCellAtColumn(_ column: Int, row row: Int) -> NSCell?
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
  func performClickOnCellAtColumn(_ column: Int, row row: Int)
}
