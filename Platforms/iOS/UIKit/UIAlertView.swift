
enum UIAlertViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case SecureTextInput
  case PlainTextInput
  case LoginAndPasswordInput
}
@available(iOS, introduced=2.0, deprecated=9.0, message="UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead")
class UIAlertView : UIView {
  convenience init(title: String?, message: String?, delegate: AnyObject?, cancelButtonTitle: String?)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAtIndex(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var visible: Bool { get }
  func show()
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  @available(iOS 5.0, *)
  var alertViewStyle: UIAlertViewStyle
  @available(iOS 5.0, *)
  func textFieldAtIndex(textFieldIndex: Int) -> UITextField?
  convenience init()
}

extension UIAlertView {
  convenience init(title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewCancel(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func willPresentAlertView(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func didPresentAlertView(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewShouldEnableFirstOtherButton(alertView: UIAlertView) -> Bool
}
