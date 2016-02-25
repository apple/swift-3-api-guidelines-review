
@available(tvOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func applyLayoutAttributes(_ layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFromLayout(_ oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func didTransitionFromLayout(_ oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  @available(tvOS 8.0, *)
  func preferredLayoutAttributesFittingAttributes(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
}
@available(tvOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var selected: Bool
  var highlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
}
