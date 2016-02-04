
@available(iOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func didTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  @available(iOS 8.0, *)
  func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var selected: Bool
  var highlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
