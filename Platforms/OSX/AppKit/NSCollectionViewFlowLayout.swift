
@available(OSX 10.11, *)
enum NSCollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
@available(OSX 10.11, *)
let NSCollectionElementKindSectionHeader: String
@available(OSX 10.11, *)
let NSCollectionElementKindSectionFooter: String
@available(OSX 10.11, *)
class NSCollectionViewFlowLayoutInvalidationContext : NSCollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol NSCollectionViewDelegateFlowLayout : NSCollectionViewDelegate {
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> NSSize
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, insetForSectionAtIndex section: Int) -> NSEdgeInsets
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> NSSize
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> NSSize
}
@available(OSX 10.11, *)
class NSCollectionViewFlowLayout : NSCollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: NSSize
  var estimatedItemSize: NSSize
  var scrollDirection: NSCollectionViewScrollDirection
  var headerReferenceSize: NSSize
  var footerReferenceSize: NSSize
  var sectionInset: NSEdgeInsets
  init()
  init?(coder aDecoder: NSCoder)
}
