
@available(iOS 2.0, *)
class UIImageView : UIView {
  init(image image: UIImage?)
  @available(iOS 3.0, *)
  init(image image: UIImage?, highlightedImage highlightedImage: UIImage?)
  var image: UIImage?
  @available(iOS 3.0, *)
  var highlightedImage: UIImage?
  var isUserInteractionEnabled: Bool
  @available(iOS 3.0, *)
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  @available(iOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: NSTimeInterval
  var animationRepeatCount: Int
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
