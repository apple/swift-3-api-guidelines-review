
@available(OSX 10.6, *)
enum NSCollectionViewDropOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case On
  case Before
}
@available(OSX 10.11, *)
enum NSCollectionViewItemHighlightState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ForSelection
  case ForDeselection
  case AsDropTarget
}
struct NSCollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSCollectionViewScrollPosition { get }
  static var Top: NSCollectionViewScrollPosition { get }
  static var CenteredVertically: NSCollectionViewScrollPosition { get }
  static var Bottom: NSCollectionViewScrollPosition { get }
  static var NearestHorizontalEdge: NSCollectionViewScrollPosition { get }
  static var Left: NSCollectionViewScrollPosition { get }
  static var CenteredHorizontally: NSCollectionViewScrollPosition { get }
  static var Right: NSCollectionViewScrollPosition { get }
  static var LeadingEdge: NSCollectionViewScrollPosition { get }
  static var TrailingEdge: NSCollectionViewScrollPosition { get }
  static var NearestVerticalEdge: NSCollectionViewScrollPosition { get }
}
protocol NSCollectionViewElement : NSObjectProtocol, NSUserInterfaceItemIdentification {
  @available(OSX 10.11, *)
  optional func prepareForReuse()
  @available(OSX 10.11, *)
  optional func applyLayoutAttributes(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  optional func willTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func didTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func preferredLayoutAttributesFittingAttributes(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
@available(OSX 10.5, *)
class NSCollectionViewItem : NSViewController, NSCopying, NSCollectionViewElement {
  var collectionView: NSCollectionView { get }
  var selected: Bool
  @available(OSX 10.11, *)
  var highlightState: NSCollectionViewItemHighlightState
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @available(OSX 10.7, *)
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func prepareForReuse()
  @available(OSX 10.11, *)
  func applyLayoutAttributes(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  func willTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func didTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func preferredLayoutAttributesFittingAttributes(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
@available(OSX 10.5, *)
class NSCollectionView : NSView, NSDraggingSource, NSDraggingDestination {
  @available(OSX 10.11, *)
  weak var dataSource: @sil_weak NSCollectionViewDataSource?
  var content: [AnyObject]
  @available(OSX 10.11, *)
  func reloadData()
  unowned(unsafe) var delegate: @sil_unmanaged NSCollectionViewDelegate?
  @available(OSX 10.11, *)
  var backgroundView: NSView?
  @available(OSX 10.11, *)
  var collectionViewLayout: NSCollectionViewLayout?
  @available(OSX 10.11, *)
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.11, *)
  func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.6, *)
  func frameForItemAtIndex(index: Int) -> NSRect
  @available(OSX 10.7, *)
  func frameForItemAtIndex(index: Int, withNumberOfItems numberOfItems: Int) -> NSRect
  var maxNumberOfRows: Int
  var maxNumberOfColumns: Int
  var minItemSize: NSSize
  var maxItemSize: NSSize
  var backgroundColors: [NSColor]!
  @available(OSX 10.11, *)
  var numberOfSections: Int { get }
  @available(OSX 10.11, *)
  func numberOfItemsInSection(section: Int) -> Int
  var firstResponder: Bool { get }
  var selectable: Bool
  @available(OSX 10.11, *)
  var allowsEmptySelection: Bool
  var allowsMultipleSelection: Bool
  @NSCopying var selectionIndexes: NSIndexSet
  @available(OSX 10.11, *)
  var selectionIndexPaths: Set<NSIndexPath>
  @available(OSX 10.11, *)
  func selectItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.11, *)
  func deselectItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  @IBAction func selectAll(sender: AnyObject?)
  @IBAction func deselectAll(sender: AnyObject?)
  @available(OSX 10.11, *)
  func registerClass(itemClass: AnyClass?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func registerNib(nib: NSNib?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func registerNib(nib: NSNib?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func makeItemWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  func makeSupplementaryViewOfKind(elementKind: String, withIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> NSView
  func newItemForRepresentedObject(object: AnyObject) -> NSCollectionViewItem
  var itemPrototype: NSCollectionViewItem?
  @available(OSX 10.6, *)
  func itemAtIndex(index: Int) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func itemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func visibleItems() -> [NSCollectionViewItem]
  @available(OSX 10.11, *)
  func indexPathsForVisibleItems() -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  func indexPathForItem(item: NSCollectionViewItem) -> NSIndexPath?
  @available(OSX 10.11, *)
  func indexPathForItemAtPoint(point: NSPoint) -> NSIndexPath?
  @available(OSX 10.11, *)
  func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSView?
  @available(OSX 10.11, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [NSView]
  @available(OSX 10.11, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  func insertSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func deleteSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func reloadSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func moveSection(section: Int, toSection newSection: Int)
  @available(OSX 10.11, *)
  func insertItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func deleteItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func reloadItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  @available(OSX 10.11, *)
  func performBatchUpdates(updates: (() -> Void)?, completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.11, *)
  func scrollToItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.6, *)
  func setDraggingSourceOperationMask(dragOperationMask: NSDragOperation, forLocal localDestination: Bool)
  @available(OSX 10.11, *)
  func draggingImageForItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.6, *)
  func draggingImageForItemsAtIndexes(indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
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
}
protocol NSCollectionViewDataSource : NSObjectProtocol {
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  optional func numberOfSectionsInCollectionView(collectionView: NSCollectionView) -> Int
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> NSView
}
protocol NSCollectionViewDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAtIndexPaths indexPaths: Set<NSIndexPath>, withEvent event: NSEvent) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAtIndexes indexes: NSIndexSet, withEvent event: NSEvent) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAtIndexes indexes: NSIndexSet, toPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> [String]
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAtIndexes indexes: NSIndexSet) -> [String]
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAtIndexPaths indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAtIndexes indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndexPath proposedDropIndexPath: AutoreleasingUnsafeMutablePointer<NSIndexPath?>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndex proposedDropIndex: UnsafeMutablePointer<Int>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, indexPath: NSIndexPath, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, index: Int, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAtIndexPath indexPath: NSIndexPath) -> NSPasteboardWriting?
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAtIndex index: Int) -> NSPasteboardWriting?
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItemsAtIndexes indexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, dragOperation operation: NSDragOperation)
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldChangeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toHighlightState highlightState: NSCollectionViewItemHighlightState) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didChangeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toHighlightState highlightState: NSCollectionViewItemHighlightState)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldDeselectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didDeselectItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplayItem item: NSCollectionViewItem, forRepresentedObjectAtIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplaySupplementaryView view: NSView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingItem item: NSCollectionViewItem, forRepresentedObjectAtIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingSupplementaryView view: NSView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, transitionLayoutForOldLayout fromLayout: NSCollectionViewLayout, newLayout toLayout: NSCollectionViewLayout) -> NSCollectionViewTransitionLayout
}
extension NSIndexPath {
  @available(OSX 10.11, *)
  /*not inherited*/ init(forItem item: Int, inSection section: Int)
  @available(OSX 10.11, *)
  var item: Int { get }
  @available(OSX 10.11, *)
  var section: Int { get }
}
extension NSSet {
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPaths indexPaths: [NSIndexPath])
  @available(OSX 10.11, *)
  func enumerateIndexPathsWithOptions(opts: NSEnumerationOptions, usingBlock block: (NSIndexPath, UnsafeMutablePointer<ObjCBool>) -> Void)
}
