
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
}
@available(tvOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  init(frame: CGRect)
  init(coder: NSCoder)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  @available(tvOS 5.0, *)
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  convenience init()
}
