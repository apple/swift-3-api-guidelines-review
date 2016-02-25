
enum UICollectionElementCategory : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Cell
  case SupplementaryView
  case DecorationView
}
@available(tvOS 6.0, *)
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
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
  var hidden: Bool
  var indexPath: NSIndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWithIndexPath indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
enum UICollectionUpdateAction : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
@available(tvOS 6.0, *)
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
}
@available(tvOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(tvOS 8.0, *)
  func invalidateItemsAtIndexPaths(_ indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateSupplementaryElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateDecorationElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  var invalidatedItemIndexPaths: [NSIndexPath]? { get }
  @available(tvOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [NSIndexPath]]? { get }
  @available(tvOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [NSIndexPath]]? { get }
  @available(tvOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(tvOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(tvOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(tvOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(tvOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
}
@available(tvOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(tvOS 7.0, *)
  func invalidateLayoutWithContext(_ context: UICollectionViewLayoutInvalidationContext)
  func registerClass(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(_ nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(tvOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  @available(tvOS 7.0, *)
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(_ rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAtIndexPath(_ indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(_ elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(_ elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(_ newBounds: CGRect) -> Bool
  @available(tvOS 7.0, *)
  func invalidationContextForBoundsChange(_ newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 8.0, *)
  func shouldInvalidateLayoutForPreferredLayoutAttributes(_ preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(tvOS 8.0, *)
  func invalidationContextForPreferredLayoutAttributes(_ preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(tvOS 7.0, *)
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepareForCollectionViewUpdates(_ updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(_ oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(tvOS 7.0, *)
  func prepareForTransitionToLayout(_ newLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func prepareForTransitionFromLayout(_ oldLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(_ itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(_ itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForSupplementaryViewOfKind(_ elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForDecorationViewOfKind(_ elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForSupplementaryViewOfKind(_ elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForDecorationViewOfKind(_ elementKind: String) -> [NSIndexPath]
}
extension UICollectionViewLayout {
  @available(tvOS 9.0, *)
  func targetIndexPathForInteractivelyMovingItem(_ previousIndexPath: NSIndexPath, withPosition position: CGPoint) -> NSIndexPath
  @available(tvOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItemAtIndexPath(_ indexPath: NSIndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(tvOS 9.0, *)
  func invalidationContextForInteractivelyMovingItems(_ targetIndexPaths: [NSIndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths previousIndexPaths: [NSIndexPath], previousPosition previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(_ indexPaths: [NSIndexPath], previousIndexPaths previousIndexPaths: [NSIndexPath], movementCancelled movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
