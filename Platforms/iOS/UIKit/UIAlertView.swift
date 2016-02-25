
enum UIAlertViewStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case SecureTextInput
  case PlainTextInput
  case LoginAndPasswordInput
}
@available(iOS, introduced=2.0, deprecated=9.0, message="UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead")
class UIAlertView : UIView {
  convenience init(title title: String?, message message: String?, delegate delegate: AnyObject?, cancelButtonTitle cancelButtonTitle: String?)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButtonWithTitle(_ title: String?) -> Int
  func buttonTitleAtIndex(_ buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var visible: Bool { get }
  func show()
  func dismissWithClickedButtonIndex(_ buttonIndex: Int, animated animated: Bool)
  @available(iOS 5.0, *)
  var alertViewStyle: UIAlertViewStyle
  @available(iOS 5.0, *)
  func textFieldAtIndex(_ textFieldIndex: Int) -> UITextField?
}

extension UIAlertView {
  convenience init(title title: String, message message: String, delegate delegate: UIAlertViewDelegate?, cancelButtonTitle cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(_ alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewCancel(_ alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func willPresentAlertView(_ alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func didPresentAlertView(_ alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(_ alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(_ alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewShouldEnableFirstOtherButton(_ alertView: UIAlertView) -> Bool
}
