
@available(OSX 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue rawValue: Int)
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
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
enum NSCollectionUpdateAction : Int {
  init?(rawValue rawValue: Int)
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
}
@available(OSX 10.11, *)
class NSCollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAtIndexPaths(_ indexPaths: Set<NSIndexPath>)
  func invalidateSupplementaryElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  func invalidateDecorationElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  var invalidatedItemIndexPaths: Set<NSIndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [String : Set<NSIndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [String : Set<NSIndexPath>]? { get }
  var contentOffsetAdjustment: NSPoint
  var contentSizeAdjustment: NSSize
}
@available(OSX 10.11, *)
class NSCollectionViewLayout : NSObject, NSCoding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWithContext(_ context: NSCollectionViewLayoutInvalidationContext)
  func registerClass(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(_ nib: NSNib?, forDecorationViewOfKind elementKind: String)
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(_ rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItemAtIndexPath(_ indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(_ elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(_ elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAtPoint(_ pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBeforeIndexPath(_ indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(_ newBounds: NSRect) -> Bool
  func invalidationContextForBoundsChange(_ newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(_ preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(_ preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepareForCollectionViewUpdates(_ updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(_ oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionToLayout(_ newLayout: NSCollectionViewLayout)
  func prepareForTransitionFromLayout(_ oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(_ itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(_ itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(_ elementKind: String) -> Set<NSIndexPath>
  func indexPathsToDeleteForDecorationViewOfKind(_ elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForSupplementaryViewOfKind(_ elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForDecorationViewOfKind(_ elementKind: String) -> Set<NSIndexPath>
}
