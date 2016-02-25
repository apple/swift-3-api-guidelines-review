
enum UIActionSheetStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Default
  case BlackTranslucent
  case BlackOpaque
}
@available(iOS, introduced=2.0, deprecated=8.3, message="UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead")
class UIActionSheet : UIView {
  init(title title: String?, delegate delegate: UIActionSheetDelegate?, cancelButtonTitle cancelButtonTitle: String?, destructiveButtonTitle destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButtonWithTitle(_ title: String?) -> Int
  func buttonTitleAtIndex(_ buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var visible: Bool { get }
  func showFromToolbar(_ view: UIToolbar)
  func showFromTabBar(_ view: UITabBar)
  @available(iOS 3.2, *)
  func showFromBarButtonItem(_ item: UIBarButtonItem, animated animated: Bool)
  @available(iOS 3.2, *)
  func showFromRect(_ rect: CGRect, inView view: UIView, animated animated: Bool)
  func showInView(_ view: UIView)
  func dismissWithClickedButtonIndex(_ buttonIndex: Int, animated animated: Bool)
}

extension UIActionSheet {
  convenience init(title title: String?, delegate delegate: UIActionSheetDelegate?, cancelButtonTitle cancelButtonTitle: String?, destructiveButtonTitle destructiveButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIActionSheetDelegate : NSObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheetCancel(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func willPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func didPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(_ actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(_ actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
