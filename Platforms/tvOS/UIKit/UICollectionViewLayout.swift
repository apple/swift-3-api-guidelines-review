
enum UICollectionElementCategory : UInt {
  init?(rawValue: UInt)
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
  init()
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
enum UICollectionUpdateAction : Int {
  init?(rawValue: Int)
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
  init()
}
@available(tvOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(tvOS 8.0, *)
  func invalidateItemsAtIndexPaths(indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateSupplementaryElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateDecorationElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
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
  init()
}
@available(tvOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(tvOS 7.0, *)
  func invalidateLayoutWithContext(context: UICollectionViewLayoutInvalidationContext)
  func registerClass(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  @available(tvOS 7.0, *)
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool
  @available(tvOS 7.0, *)
  func invalidationContextForBoundsChange(newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 8.0, *)
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(tvOS 8.0, *)
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(tvOS 7.0, *)
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(tvOS 7.0, *)
  func prepareForTransitionToLayout(newLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func prepareForTransitionFromLayout(oldLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
}
extension UICollectionViewLayout {
  @available(tvOS 9.0, *)
  func targetIndexPathForInteractivelyMovingItem(previousIndexPath: NSIndexPath, withPosition position: CGPoint) -> NSIndexPath
  @available(tvOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItemAtIndexPath(indexPath: NSIndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(tvOS 9.0, *)
  func invalidationContextForInteractivelyMovingItems(targetIndexPaths: [NSIndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [NSIndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(indexPaths: [NSIndexPath], previousIndexPaths: [NSIndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
