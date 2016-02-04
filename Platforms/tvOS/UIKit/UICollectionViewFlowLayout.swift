
@available(tvOS 6.0, *)
let UICollectionElementKindSectionHeader: String
@available(tvOS 6.0, *)
let UICollectionElementKindSectionFooter: String
enum UICollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
@available(tvOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(tvOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(tvOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionViewScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  @available(tvOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(tvOS 9.0, *)
  var sectionFootersPinToVisibleBounds: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
