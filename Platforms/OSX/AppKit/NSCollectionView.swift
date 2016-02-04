
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
protocol NSCollectionViewElement : ObjectProtocol, NSUserInterfaceItemIdentification {
  @available(OSX 10.11, *)
  optional func prepareForReuse()
  @available(OSX 10.11, *)
  optional func apply(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  optional func willTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func didTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func preferredLayoutAttributesFitting(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
@available(OSX 10.5, *)
class NSCollectionViewItem : NSViewController, Copying, NSCollectionViewElement {
  var collectionView: NSCollectionView { get }
  var isSelected: Bool
  @available(OSX 10.11, *)
  var highlightState: NSCollectionViewItemHighlightState
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @available(OSX 10.7, *)
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func prepareForReuse()
  @available(OSX 10.11, *)
  func apply(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  func willTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func didTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func preferredLayoutAttributesFitting(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
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
  func layoutAttributesForItemAt(indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.11, *)
  func layoutAttributesForSupplementaryElementOfKind(kind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.6, *)
  func frameForItemAt(index: Int) -> Rect
  @available(OSX 10.7, *)
  func frameForItemAt(index: Int, withNumberOfItems numberOfItems: Int) -> Rect
  var maxNumberOfRows: Int
  var maxNumberOfColumns: Int
  var minItemSize: Size
  var maxItemSize: Size
  var backgroundColors: [NSColor]!
  @available(OSX 10.11, *)
  var numberOfSections: Int { get }
  @available(OSX 10.11, *)
  func numberOfItemsInSection(section: Int) -> Int
  var isFirstResponder: Bool { get }
  var isSelectable: Bool
  @available(OSX 10.11, *)
  var allowsEmptySelection: Bool
  var allowsMultipleSelection: Bool
  @NSCopying var selectionIndexes: IndexSet
  @available(OSX 10.11, *)
  var selectionIndexPaths: Set<IndexPath>
  @available(OSX 10.11, *)
  func selectItemsAt(indexPaths: Set<IndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.11, *)
  func deselectItemsAt(indexPaths: Set<IndexPath>)
  @IBAction func selectAll(sender: AnyObject?)
  @IBAction func deselectAll(sender: AnyObject?)
  @available(OSX 10.11, *)
  func register(itemClass: AnyClass?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(nib: NSNib?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(nib: NSNib?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func makeItemWithIdentifier(identifier: String, forIndexPath indexPath: IndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  func makeSupplementaryViewOfKind(elementKind: String, withIdentifier identifier: String, forIndexPath indexPath: IndexPath) -> NSView
  func newItemForRepresentedObject(object: AnyObject) -> NSCollectionViewItem
  var itemPrototype: NSCollectionViewItem?
  @available(OSX 10.6, *)
  func itemAt(index: Int) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func itemAt(indexPath: IndexPath) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func visibleItems() -> [NSCollectionViewItem]
  @available(OSX 10.11, *)
  func indexPathsForVisibleItems() -> Set<IndexPath>
  @available(OSX 10.11, *)
  func indexPathFor(item: NSCollectionViewItem) -> IndexPath?
  @available(OSX 10.11, *)
  func indexPathForItemAt(point: Point) -> IndexPath?
  @available(OSX 10.11, *)
  func supplementaryViewForElementKind(elementKind: String, at indexPath: IndexPath) -> NSView?
  @available(OSX 10.11, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [NSView]
  @available(OSX 10.11, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> Set<IndexPath>
  @available(OSX 10.11, *)
  func insertSections(sections: IndexSet)
  @available(OSX 10.11, *)
  func deleteSections(sections: IndexSet)
  @available(OSX 10.11, *)
  func reloadSections(sections: IndexSet)
  @available(OSX 10.11, *)
  func moveSection(section: Int, toSection newSection: Int)
  @available(OSX 10.11, *)
  func insertItemsAt(indexPaths: Set<IndexPath>)
  @available(OSX 10.11, *)
  func deleteItemsAt(indexPaths: Set<IndexPath>)
  @available(OSX 10.11, *)
  func reloadItemsAt(indexPaths: Set<IndexPath>)
  @available(OSX 10.11, *)
  func moveItemAt(indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(OSX 10.11, *)
  func performBatchUpdates(updates: (() -> Void)?, completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.11, *)
  func scrollToItemsAt(indexPaths: Set<IndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.6, *)
  func setDraggingSourceOperationMask(dragOperationMask: NSDragOperation, forLocal localDestination: Bool)
  @available(OSX 10.11, *)
  func draggingImageForItemsAt(indexPaths: Set<IndexPath>, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage
  @available(OSX 10.6, *)
  func draggingImageForItemsAt(indexes: IndexSet, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
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
}
protocol NSCollectionViewDataSource : ObjectProtocol {
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  optional func numberOfSectionsIn(collectionView: NSCollectionView) -> Int
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> NSView
}
protocol NSCollectionViewDelegate : ObjectProtocol {
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAt indexPaths: Set<IndexPath>, withEvent event: NSEvent) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAt indexes: IndexSet, withEvent event: NSEvent) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAt indexPaths: Set<IndexPath>, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAt indexes: IndexSet, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: URL, forDraggedItemsAt indexPaths: Set<IndexPath>) -> [String]
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: URL, forDraggedItemsAt indexes: IndexSet) -> [String]
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAt indexPaths: Set<IndexPath>, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAt indexes: IndexSet, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndexPath proposedDropIndexPath: AutoreleasingUnsafeMutablePointer<IndexPath?>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndex proposedDropIndex: UnsafeMutablePointer<Int>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, indexPath: IndexPath, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, index: Int, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAt indexPath: IndexPath) -> NSPasteboardWriting?
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAt index: Int) -> NSPasteboardWriting?
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: Point, forItemsAt indexPaths: Set<IndexPath>)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: Point, forItemsAt indexes: IndexSet)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, endedAt screenPoint: Point, dragOperation operation: NSDragOperation)
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldChangeItemsAt indexPaths: Set<IndexPath>, to highlightState: NSCollectionViewItemHighlightState) -> Set<IndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didChangeItemsAt indexPaths: Set<IndexPath>, to highlightState: NSCollectionViewItemHighlightState)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldSelectItemsAt indexPaths: Set<IndexPath>) -> Set<IndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldDeselectItemsAt indexPaths: Set<IndexPath>) -> Set<IndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didDeselectItemsAt indexPaths: Set<IndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplay item: NSCollectionViewItem, forRepresentedObjectAt indexPath: IndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplaySupplementaryView view: NSView, forElementKind elementKind: String, at indexPath: IndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplaying item: NSCollectionViewItem, forRepresentedObjectAt indexPath: IndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingSupplementaryView view: NSView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, transitionLayoutForOldLayout fromLayout: NSCollectionViewLayout, newLayout toLayout: NSCollectionViewLayout) -> NSCollectionViewTransitionLayout
}
extension IndexPath {
  @available(OSX 10.11, *)
  /*not inherited*/ init(forItem item: Int, inSection section: Int)
  @available(OSX 10.11, *)
  var item: Int { get }
  @available(OSX 10.11, *)
  var section: Int { get }
}
extension NSSet {
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPath indexPath: IndexPath)
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPaths indexPaths: [IndexPath])
  @available(OSX 10.11, *)
  func enumerateIndexPaths(options opts: EnumerationOptions = [], usingBlock block: (IndexPath, UnsafeMutablePointer<ObjCBool>) -> Void)
}
