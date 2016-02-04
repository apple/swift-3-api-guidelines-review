
@available(iOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(iOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(iOS 3.0, *)
  var highlightedImage: UIImage?
  var userInteractionEnabled: Bool
  @available(iOS 3.0, *)
  var highlighted: Bool
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
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
