
enum UIActionSheetStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Default
  case BlackTranslucent
  case BlackOpaque
}
@available(iOS, introduced=2.0, deprecated=8.3, message="UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead")
class UIActionSheet : UIView {
  init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAt(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  func showFrom(view: UIToolbar)
  func showFrom(view: UITabBar)
  @available(iOS 3.2, *)
  func showFrom(item: UIBarButtonItem, animated: Bool)
  @available(iOS 3.2, *)
  func showFrom(rect: CGRect, in view: UIView, animated: Bool)
  func showIn(view: UIView)
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}

extension UIActionSheet {
  convenience init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIActionSheetDelegate : ObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheetCancel(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func willPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func didPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
