
@available(OSX 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case item
  case supplementaryView
  case decorationView
  case interItemGap
}
@available(OSX 10.11, *)
let NSCollectionElementKindInterItemGapIndicator: String
@available(OSX 10.11, *)
class NSCollectionViewLayoutAttributes : NSObject, NSCopying {
  var frame: NSRect
  var size: NSSize
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: NSIndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWith indexPath: NSIndexPath)
  convenience init(forInterItemGapBefore indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, with indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, with indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
enum NSCollectionUpdateAction : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case insert
  case delete
  case reload
  case move
  case none
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
  func invalidateItems(at indexPaths: Set<NSIndexPath>)
  func invalidateSupplementaryElements(ofKind elementKind: String, at indexPaths: Set<NSIndexPath>)
  func invalidateDecorationElements(ofKind elementKind: String, at indexPaths: Set<NSIndexPath>)
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
  func invalidateLayout(with context: NSCollectionViewLayoutInvalidationContext)
  func register(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(_ nib: NSNib?, forDecorationViewOfKind elementKind: String)
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepare()
  func layoutAttributesForElements(in rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItem(at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTarget(at pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGap(before indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: NSRect) -> Bool
  func invalidationContext(forBoundsChange newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffset(forProposedContentOffset proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransition(to newLayout: NSCollectionViewLayout)
  func prepareForTransition(from oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryView(ofKind elementKind: String) -> Set<NSIndexPath>
  func indexPathsToDeleteForDecorationView(ofKind elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForSupplementaryView(ofKind elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForDecorationView(ofKind elementKind: String) -> Set<NSIndexPath>
}
