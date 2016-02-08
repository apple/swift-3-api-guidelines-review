
@available(OSX 10.11, *)
enum NSCollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
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
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> Size
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, insetForSectionAt section: Int) -> EdgeInsets
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> Size
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> Size
}
@available(OSX 10.11, *)
class NSCollectionViewFlowLayout : NSCollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: Size
  var estimatedItemSize: Size
  var scrollDirection: NSCollectionViewScrollDirection
  var headerReferenceSize: Size
  var footerReferenceSize: Size
  var sectionInset: EdgeInsets
  init()
  init?(coder aDecoder: Coder)
}
