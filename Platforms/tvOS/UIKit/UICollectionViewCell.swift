
@available(tvOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func didTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(tvOS 8.0, *)
  func preferredLayoutAttributesFitting(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(tvOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var isSelected: Bool
  var isHighlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
