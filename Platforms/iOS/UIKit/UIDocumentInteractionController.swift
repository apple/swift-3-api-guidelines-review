
@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(URL url: NSURL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var URL: NSURL?
  var UTI: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenuFromRect(rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOptionsMenuFromBarButtonItem(item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreviewAnimated(animated: Bool) -> Bool
  func presentOpenInMenuFromRect(rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOpenInMenuFromBarButtonItem(item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreviewAnimated(animated: Bool)
  func dismissMenuAnimated(animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  init()
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheetCancel(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func willPresentActionSheet(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func didPresentActionSheet(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
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
