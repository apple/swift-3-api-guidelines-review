
enum UICollectionElementCategory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case cell
  case supplementaryView
  case decorationView
}
@available(tvOS 6.0, *)
class UICollectionViewLayoutAttributes : Object, Copying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  @available(tvOS 7.0, *)
  var bounds: CGRect
  @available(tvOS 7.0, *)
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: IndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWith indexPath: IndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, with indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, with indexPath: IndexPath)
  init()
  @available(tvOS 6.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
enum UICollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insert
  case delete
  case reload
  case move
  case none
}
@available(tvOS 6.0, *)
class UICollectionViewUpdateItem : Object {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
  init()
}
@available(tvOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : Object {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(tvOS 8.0, *)
  func invalidateItems(at indexPaths: [IndexPath])
  @available(tvOS 8.0, *)
  func invalidateSupplementaryElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(tvOS 8.0, *)
  func invalidateDecorationElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(tvOS 8.0, *)
  var invalidatedItemIndexPaths: [IndexPath]? { get }
  @available(tvOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [IndexPath]]? { get }
  @available(tvOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [IndexPath]]? { get }
  @available(tvOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(tvOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(tvOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(tvOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(tvOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
  init()
}
@available(tvOS 6.0, *)
class UICollectionViewLayout : Object, Coding {
  init()
  init?(coder aDecoder: Coder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(tvOS 7.0, *)
  func invalidateLayout(context: UICollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(tvOS 6.0, *)
  func encode(aCoder: Coder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  @available(tvOS 7.0, *)
  class func invalidationContextClass() -> AnyClass
  func prepare()
  func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool
  @available(tvOS 7.0, *)
  func invalidationContext(forBoundsChange newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 8.0, *)
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(tvOS 8.0, *)
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(tvOS 7.0, *)
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(tvOS 7.0, *)
  func prepareForTransition(to newLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func prepareForTransition(from oldLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForDecorationView(ofKind elementKind: String) -> [IndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForDecorationView(ofKind elementKind: String) -> [IndexPath]
}
extension UICollectionViewLayout {
  @available(tvOS 9.0, *)
  func targetIndexPath(forInteractivelyMovingItem previousIndexPath: IndexPath, withPosition position: CGPoint) -> IndexPath
  @available(tvOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItem(at indexPath: IndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(tvOS 9.0, *)
  func invalidationContext(forInteractivelyMovingItems targetIndexPaths: [IndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [IndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItems(toFinalIndexPaths indexPaths: [IndexPath], previousIndexPaths: [IndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
