
enum UIButtonType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Custom
  @available(iOS 7.0, *)
  case System
  case DetailDisclosure
  case InfoLight
  case InfoDark
  case ContactAdd
  static var RoundedRect: UIButtonType { get }
}
@available(iOS 2.0, *)
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  var buttonType: UIButtonType { get }
  func setTitle(_ title: String?, forState state: UIControlState)
  func setTitleColor(_ color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(_ color: UIColor?, forState state: UIControlState)
  func setImage(_ image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setAttributedTitle(_ title: NSAttributedString?, forState state: UIControlState)
  func titleForState(_ state: UIControlState) -> String?
  func titleColorForState(_ state: UIControlState) -> UIColor?
  func titleShadowColorForState(_ state: UIControlState) -> UIColor?
  func imageForState(_ state: UIControlState) -> UIImage?
  func backgroundImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func attributedTitleForState(_ state: UIControlState) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(iOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(iOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRectForBounds(_ bounds: CGRect) -> CGRect
  func contentRectForBounds(_ bounds: CGRect) -> CGRect
  func titleRectForContentRect(_ contentRect: CGRect) -> CGRect
  func imageRectForContentRect(_ contentRect: CGRect) -> CGRect
}
extension UIButton {
}
