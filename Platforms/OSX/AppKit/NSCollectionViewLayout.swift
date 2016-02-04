
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
class NSCollectionViewLayoutAttributes : NSObject, NSCopying {
  var frame: NSRect
  var size: NSSize
  var alpha: CGFloat
  var zIndex: Int
  var hidden: Bool
  var indexPath: NSIndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWithIndexPath indexPath: NSIndexPath)
  convenience init(forInterItemGapBeforeIndexPath indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
class NSCollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: NSCollectionUpdateAction { get }
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  func invalidateSupplementaryElementsOfKind(elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  func invalidateDecorationElementsOfKind(elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  var invalidatedItemIndexPaths: Set<NSIndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [String : Set<NSIndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [String : Set<NSIndexPath>]? { get }
  var contentOffsetAdjustment: NSPoint
  var contentSizeAdjustment: NSSize
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayout : NSObject, NSCoding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWithContext(context: NSCollectionViewLayoutInvalidationContext)
  func registerClass(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(nib: NSNib?, forDecorationViewOfKind elementKind: String)
  init()
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAtPoint(pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBeforeIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: NSRect) -> Bool
  func invalidationContextForBoundsChange(newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionToLayout(newLayout: NSCollectionViewLayout)
  func prepareForTransitionFromLayout(oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
}
