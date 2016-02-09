
@available(OSX 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case item
  case supplementaryView
  case decorationView
  case interItemGap
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
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
enum NSCollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insert
  case delete
  case reload
  case move
  case none
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
  func invalidateSupplementaryElements(ofKind elementKind: String, at indexPaths: Set<IndexPath>)
  func invalidateDecorationElements(ofKind elementKind: String, at indexPaths: Set<IndexPath>)
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
  func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAt(pointInCollectionView: Point) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBefore(indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: Rect) -> Bool
  func invalidationContextForBoundsChange(newBounds: Rect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutFor(preferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextFor(preferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetFor(proposedContentOffset proposedContentOffset: Point, withScrollingVelocity velocity: Point) -> Point
  func targetContentOffsetFor(proposedContentOffset proposedContentOffset: Point) -> Point
  var collectionViewContentSize: Size { get }
}
extension NSCollectionViewLayout {
  func prepareFor(collectionViewUpdates updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: Rect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionTo(newLayout: NSCollectionViewLayout)
  func prepareForTransitionFrom(oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAt(itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAt(itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToDeleteForDecorationViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForSupplementaryViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForDecorationViewOf(kind elementKind: String) -> Set<IndexPath>
}
