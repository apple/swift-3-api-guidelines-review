
@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(url: NSURL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var url: NSURL?
  var uti: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOptionsMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreview(animated animated: Bool) -> Bool
  func presentOpenInMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOpenInMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreview(animated animated: Bool)
  func dismissMenu(animated animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  init()
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheetCancel(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func willPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func didPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewController(forPreview controller: UIDocumentInteractionController) -> UIViewController
  @available(iOS 3.2, *)
  optional func documentInteractionControllerRect(forPreview controller: UIDocumentInteractionController) -> CGRect
  @available(iOS 3.2, *)
  optional func documentInteractionControllerView(forPreview controller: UIDocumentInteractionController) -> UIView?
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillBeginPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidEndPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOpen(inMenu controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOpen(inMenu controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
