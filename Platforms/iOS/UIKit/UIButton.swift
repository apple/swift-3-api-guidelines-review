
enum UIButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case custom
  @available(iOS 7.0, *)
  case system
  case detailDisclosure
  case infoLight
  case infoDark
  case contactAdd
  static var roundedRect: UIButtonType { get }
}
@available(iOS 2.0, *)
class UIButton : UIControl, Coding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, for state: UIControlState)
  func setTitleColor(color: UIColor?, for state: UIControlState)
  func setTitleShadowColor(color: UIColor?, for state: UIControlState)
  func setImage(image: UIImage?, for state: UIControlState)
  func setBackgroundImage(image: UIImage?, for state: UIControlState)
  @available(iOS 6.0, *)
  func setAttributedTitle(title: AttributedString?, for state: UIControlState)
  func title(for state: UIControlState) -> String?
  func titleColor(for state: UIControlState) -> UIColor?
  func titleShadowColor(for state: UIControlState) -> UIColor?
  func image(for state: UIControlState) -> UIImage?
  func backgroundImage(for state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func attributedTitle(for state: UIControlState) -> AttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(iOS 6.0, *)
  var currentAttributedTitle: AttributedString? { get }
  @available(iOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRect(forBounds bounds: CGRect) -> CGRect
  func contentRect(forBounds bounds: CGRect) -> CGRect
  func titleRect(forContentRect contentRect: CGRect) -> CGRect
  func imageRect(forContentRect contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension UIButton {
}
