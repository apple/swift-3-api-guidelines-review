
@available(iOS 3.2, *)
class UIDocumentInteractionController : Object, UIActionSheetDelegate {
  /*not inherited*/ init(url: URL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var url: URL?
  var uti: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenuFrom(rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOptionsMenuFrom(item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreviewAnimated(animated: Bool) -> Bool
  func presentOpenInMenuFrom(rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOpenInMenuFrom(item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreviewAnimated(animated: Bool)
  func dismissMenuAnimated(animated: Bool)
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
protocol UIDocumentInteractionControllerDelegate : ObjectProtocol {
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewControllerForPreview(controller: UIDocumentInteractionController) -> UIViewController
  @available(iOS 3.2, *)
  optional func documentInteractionControllerRectForPreview(controller: UIDocumentInteractionController) -> CGRect
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewForPreview(controller: UIDocumentInteractionController) -> UIView?
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillBeginPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidEndPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOpenInMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOpenInMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
