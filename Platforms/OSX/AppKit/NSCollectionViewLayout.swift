
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
  convenience init(forSupplementaryViewOfKind elementKind: String, with indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, with indexPath: IndexPath)
  init()
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
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
  func invalidateItems(at indexPaths: Set<IndexPath>)
  func invalidateSupplementaryElementsOf(kind elementKind: String, at indexPaths: Set<IndexPath>)
  func invalidateDecorationElementsOf(kind elementKind: String, at indexPaths: Set<IndexPath>)
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
  func invalidateLayout(with context: NSCollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: NSNib?, forDecorationViewOfKind elementKind: String)
  init()
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepare()
  func layoutAttributesForElements(in rect: Rect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItem(at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOf(kind elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOf(kind elementKind: String, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTarget(at pointInCollectionView: Point) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGap(before indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: Rect) -> Bool
  func invalidationContext(forBoundsChange newBounds: Rect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: Point, withScrollingVelocity velocity: Point) -> Point
  func targetContentOffset(forProposedContentOffset proposedContentOffset: Point) -> Point
  var collectionViewContentSize: Size { get }
}
extension NSCollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: Rect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransition(to newLayout: NSCollectionViewLayout)
  func prepareForTransition(from oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOf(kind elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOf(kind elementKind: String, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOf(kind elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOf(kind elementKind: String, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToDeleteForDecorationViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForSupplementaryViewOf(kind elementKind: String) -> Set<IndexPath>
  func indexPathsToInsertForDecorationViewOf(kind elementKind: String) -> Set<IndexPath>
}
