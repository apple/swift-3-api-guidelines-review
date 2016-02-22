
@available(tvOS 2.0, *)
class UIImageView : UIView {
  init(image image: UIImage?)
  @available(tvOS 3.0, *)
  init(image image: UIImage?, highlightedImage highlightedImage: UIImage?)
  var image: UIImage?
  @available(tvOS 3.0, *)
  var highlightedImage: UIImage?
  var isUserInteractionEnabled: Bool
  @available(tvOS 3.0, *)
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  @available(tvOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: NSTimeInterval
  var animationRepeatCount: Int
  @available(tvOS 7.0, *)
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  @available(tvOS 9.0, *)
  var adjustsImageWhenAncestorFocused: Bool
  @available(tvOS 9.0, *)
  var focusedFrameGuide: UILayoutGuide { get }
  init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
