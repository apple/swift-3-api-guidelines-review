
struct __OvFlags {
  var allItemsLoaded: UInt32
  var dataSourceObjectValueByItem: UInt32
  var allowAutomaticAnimations: UInt32
  var dontRedisplayOnFrameChange: UInt32
  var _isSpringLoadingFlashing: UInt32
  var unused2: UInt32
  var delegateShouldAutoExpandItem: UInt32
  var delegateAutoCollapseItem: UInt32
  var delegateAutoExpandItem: UInt32
  var delegateShouldShowOutlineCellForItem: UInt32
  var dataSourceDraggedImageMovedTo: UInt32
  var dataSourceDraggingEndedAt: UInt32
  var reloadingData: UInt32
  var validDataSourceMethods: UInt32
  var numberOfRowsDataExpandEntered: UInt32
  var delayRowEntryFreeDisabled: UInt32
  var delegateHeightOfRowByItem: UInt32
  var animateExpandAndCollapse: UInt32
  var unused: UInt32
  var selectionAdjustmentDisabled: UInt32
  var subclassRowForItem: UInt32
  var delegateWillDisplayOutlineCell: UInt32
  var enableExpandNotifications: UInt32
  var autoSaveExpandItems: UInt32
  var autoresizesOutlineColumn: UInt32
  var delegateShouldExpandItem: UInt32
  var delegateShouldCollapseItem: UInt32
  var delegateSelectionShouldChangeInOutlineView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectItem: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  init()
  init(allItemsLoaded: UInt32, dataSourceObjectValueByItem: UInt32, allowAutomaticAnimations: UInt32, dontRedisplayOnFrameChange: UInt32, _isSpringLoadingFlashing: UInt32, unused2: UInt32, delegateShouldAutoExpandItem: UInt32, delegateAutoCollapseItem: UInt32, delegateAutoExpandItem: UInt32, delegateShouldShowOutlineCellForItem: UInt32, dataSourceDraggedImageMovedTo: UInt32, dataSourceDraggingEndedAt: UInt32, reloadingData: UInt32, validDataSourceMethods: UInt32, numberOfRowsDataExpandEntered: UInt32, delayRowEntryFreeDisabled: UInt32, delegateHeightOfRowByItem: UInt32, animateExpandAndCollapse: UInt32, unused: UInt32, selectionAdjustmentDisabled: UInt32, subclassRowForItem: UInt32, delegateWillDisplayOutlineCell: UInt32, enableExpandNotifications: UInt32, autoSaveExpandItems: UInt32, autoresizesOutlineColumn: UInt32, delegateShouldExpandItem: UInt32, delegateShouldCollapseItem: UInt32, delegateSelectionShouldChangeInOutlineView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectItem: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32)
}
typealias _OVFlags = __OvFlags
var NSOutlineViewDropOnItemIndex: Int { get }
class NSOutlineView : NSTableView, NSAccessibilityOutline {
  func setDelegate(anObject: NSOutlineViewDelegate?)
  func delegate() -> NSOutlineViewDelegate?
  func setDataSource(aSource: NSOutlineViewDataSource?)
  func dataSource() -> NSOutlineViewDataSource?
  unowned(unsafe) var outlineTableColumn: @sil_unmanaged NSTableColumn?
  func isExpandable(item: AnyObject?) -> Bool
  @available(OSX 10.10, *)
  func numberOfChildrenOfItem(item: AnyObject?) -> Int
  @available(OSX 10.10, *)
  func child(index: Int, ofItem item: AnyObject?) -> AnyObject?
  func expandItem(item: AnyObject?, expandChildren: Bool)
  func expandItem(item: AnyObject?)
  func collapseItem(item: AnyObject?, collapseChildren: Bool)
  func collapseItem(item: AnyObject?)
  func reloadItem(item: AnyObject?, reloadChildren: Bool)
  func reloadItem(item: AnyObject?)
  func parentForItem(item: AnyObject?) -> AnyObject?
  @available(OSX 10.11, *)
  func childIndexForItem(item: AnyObject) -> Int
  func itemAtRow(row: Int) -> AnyObject?
  func rowForItem(item: AnyObject?) -> Int
  func levelForItem(item: AnyObject?) -> Int
  func levelForRow(row: Int) -> Int
  func isItemExpanded(item: AnyObject?) -> Bool
  var indentationPerLevel: CGFloat
  var indentationMarkerFollowsCell: Bool
  var autoresizesOutlineColumn: Bool
  @available(OSX 10.5, *)
  func frameOfOutlineCellAtRow(row: Int) -> NSRect
  func setDropItem(item: AnyObject?, dropChildIndex index: Int)
  func shouldCollapseAutoExpandedItemsForDeposited(deposited: Bool) -> Bool
  var autosaveExpandedItems: Bool
  @available(OSX 10.7, *)
  func insertItemsAtIndexes(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func removeItemsAtIndexes(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions)
  @available(OSX 10.7, *)
  func moveItemAtIndex(fromIndex: Int, inParent oldParent: AnyObject?, toIndex: Int, inParent newParent: AnyObject?)
  @available(OSX 10.7, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSOutlineViewDataSource : NSObjectProtocol {
  optional func outlineView(outlineView: NSOutlineView, numberOfChildrenOfItem item: AnyObject?) -> Int
  optional func outlineView(outlineView: NSOutlineView, child index: Int, ofItem item: AnyObject?) -> AnyObject
  optional func outlineView(outlineView: NSOutlineView, isItemExpandable item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, objectValueForTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?)
  optional func outlineView(outlineView: NSOutlineView, itemForPersistentObject object: AnyObject) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, persistentObjectForItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, pasteboardWriterForItem item: AnyObject) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItems draggedItems: [AnyObject])
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  optional func outlineView(outlineView: NSOutlineView, writeItems items: [AnyObject], toPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func outlineView(outlineView: NSOutlineView, validateDrop info: NSDraggingInfo, proposedItem item: AnyObject?, proposedChildIndex index: Int) -> NSDragOperation
  optional func outlineView(outlineView: NSOutlineView, acceptDrop info: NSDraggingInfo, item: AnyObject?, childIndex index: Int) -> Bool
  optional func outlineView(outlineView: NSOutlineView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedItems items: [AnyObject]) -> [String]
}
protocol NSOutlineViewDelegate : NSControlTextEditingDelegate {
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, viewForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSView?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, rowViewForItem item: AnyObject) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, didAddRowView rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, didRemoveRowView rowView: NSTableRowView, forRow row: Int)
  optional func outlineView(outlineView: NSOutlineView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  optional func outlineView(outlineView: NSOutlineView, shouldEditTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  optional func selectionShouldChangeInOutlineView(outlineView: NSOutlineView) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldSelectItem item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func outlineView(outlineView: NSOutlineView, shouldSelectTableColumn tableColumn: NSTableColumn?) -> Bool
  optional func outlineView(outlineView: NSOutlineView, mouseDownInHeaderOfTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didClickTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didDragTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, toolTipForCell cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, item: AnyObject, mouseLocation: NSPoint) -> String
  optional func outlineView(outlineView: NSOutlineView, heightOfRowByItem item: AnyObject) -> CGFloat
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, typeSelectStringForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> String?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, nextTypeSelectMatchFromItem startItem: AnyObject, toItem endItem: AnyObject, forString searchString: String) -> AnyObject?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, dataCellForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSCell?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, isGroupItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldExpandItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldCollapseItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, willDisplayOutlineCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, shouldShowOutlineCellForItem item: AnyObject) -> Bool
  optional func outlineViewSelectionDidChange(notification: NSNotification)
  optional func outlineViewColumnDidMove(notification: NSNotification)
  optional func outlineViewColumnDidResize(notification: NSNotification)
  optional func outlineViewSelectionIsChanging(notification: NSNotification)
  optional func outlineViewItemWillExpand(notification: NSNotification)
  optional func outlineViewItemDidExpand(notification: NSNotification)
  optional func outlineViewItemWillCollapse(notification: NSNotification)
  optional func outlineViewItemDidCollapse(notification: NSNotification)
}
@available(OSX 10.9, *)
let NSOutlineViewDisclosureButtonKey: String
@available(OSX 10.9, *)
let NSOutlineViewShowHideButtonKey: String
let NSOutlineViewSelectionDidChangeNotification: String
let NSOutlineViewColumnDidMoveNotification: String
let NSOutlineViewColumnDidResizeNotification: String
let NSOutlineViewSelectionIsChangingNotification: String
let NSOutlineViewItemWillExpandNotification: String
let NSOutlineViewItemDidExpandNotification: String
let NSOutlineViewItemWillCollapseNotification: String
let NSOutlineViewItemDidCollapseNotification: String