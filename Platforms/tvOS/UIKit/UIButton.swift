
enum UIButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Custom
  @available(tvOS 7.0, *)
  case System
  case DetailDisclosure
  case InfoLight
  case InfoDark
  case ContactAdd
  static var RoundedRect: UIButtonType { get }
}
@available(tvOS 2.0, *)
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  @available(tvOS 5.0, *)
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(tvOS 6.0, *)
  func setAttributedTitle(title: NSAttributedString?, forState state: UIControlState)
  func titleForState(state: UIControlState) -> String?
  func titleColorForState(state: UIControlState) -> UIColor?
  func titleShadowColorForState(state: UIControlState) -> UIColor?
  func imageForState(state: UIControlState) -> UIImage?
  func backgroundImageForState(state: UIControlState) -> UIImage?
  @available(tvOS 6.0, *)
  func attributedTitleForState(state: UIControlState) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(tvOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(tvOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(tvOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRectForBounds(bounds: CGRect) -> CGRect
  func contentRectForBounds(bounds: CGRect) -> CGRect
  func titleRectForContentRect(contentRect: CGRect) -> CGRect
  func imageRectForContentRect(contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIButton {
}
