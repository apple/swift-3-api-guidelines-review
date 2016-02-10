
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
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setAttributedTitle(title: AttributedString?, forState state: UIControlState)
  func titleFor(state: UIControlState) -> String?
  func titleColorFor(state: UIControlState) -> UIColor?
  func titleShadowColorFor(state: UIControlState) -> UIColor?
  func imageFor(state: UIControlState) -> UIImage?
  func backgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func attributedTitleFor(state: UIControlState) -> AttributedString?
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
  func backgroundRectFor(bounds bounds: CGRect) -> CGRect
  func contentRectFor(bounds bounds: CGRect) -> CGRect
  func titleRectFor(contentRect contentRect: CGRect) -> CGRect
  func imageRectFor(contentRect contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension UIButton {
}
