
@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(URL url: NSURL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var URL: NSURL?
  var UTI: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenuFromRect(_ rect: CGRect, inView view: UIView, animated animated: Bool) -> Bool
  func presentOptionsMenuFromBarButtonItem(_ item: UIBarButtonItem, animated animated: Bool) -> Bool
  func presentPreviewAnimated(_ animated: Bool) -> Bool
  func presentOpenInMenuFromRect(_ rect: CGRect, inView view: UIView, animated animated: Bool) -> Bool
  func presentOpenInMenuFromBarButtonItem(_ item: UIBarButtonItem, animated animated: Bool) -> Bool
  func dismissPreviewAnimated(_ animated: Bool)
  func dismissMenuAnimated(_ animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheetCancel(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func willPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func didPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(_ actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(_ actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController
  @available(iOS 3.2, *)
  optional func documentInteractionControllerRectForPreview(_ controller: UIDocumentInteractionController) -> CGRect
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewForPreview(_ controller: UIDocumentInteractionController) -> UIView?
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillBeginPreview(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidEndPreview(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOptionsMenu(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOptionsMenu(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOpenInMenu(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOpenInMenu(_ controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  @available(iOS 3.2, *)
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
