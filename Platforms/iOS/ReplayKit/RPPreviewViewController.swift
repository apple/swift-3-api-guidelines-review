
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  optional func previewControllerDidFinish(previewController: RPPreviewViewController)
  optional func previewController(previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
