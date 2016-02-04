
@available(OSX 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case SupplementaryView
  case DecorationView
  case InterItemGap
}
@available(OSX 10.11, *)
let NSCollectionElementKindInterItemGapIndicator: String
@available(OSX 10.11, *)
class NSCollectionViewLayoutAttributes : Object, Copying {
  var frame: Rect
  var size: Size
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: IndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWith indexPath: IndexPath)
  convenience init(forInterItemGapBefore indexPath: IndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: IndexPath)
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
enum NSCollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
@available(OSX 10.11, *)
class NSCollectionViewUpdateItem : Object {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: NSCollectionUpdateAction { get }
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayoutInvalidationContext : Object {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAt(indexPaths: Set<IndexPath>)
  func invalidateSupplementaryElementsOfKind(elementKind: String, at indexPaths: Set<IndexPath>)
  func invalidateDecorationElementsOfKind(elementKind: String, at indexPaths: Set<IndexPath>)
  var invalidatedItemIndexPaths: Set<IndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [String : Set<IndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [String : Set<IndexPath>]? { get }
  var contentOffsetAdjustment: Point
  var contentSizeAdjustment: Size
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayout : Object, Coding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWith(context: NSCollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: NSNib?, forDecorationViewOfKind elementKind: String)
  init()
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepare()
  func layoutAttributesForElementsIn(rect: Rect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItemAt(indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAt(pointInCollectionView: Point) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBefore(indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: Rect) -> Bool
  func invalidationContextForBoundsChange(newBounds: Rect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: Point, withScrollingVelocity velocity: Point) -> Point
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: Point) -> Point
  var collectionViewContentSize: Size { get }
}
extension NSCollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: Rect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionTo(newLayout: NSCollectionViewLayout)
  func prepareForTransitionFrom(oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAt(itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAt(itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> Set<IndexPath>
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> Set<IndexPath>
}
