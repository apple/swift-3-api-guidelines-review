
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 9.0, *)
protocol RPPreviewViewControllerDelegate : ObjectProtocol {
  optional func previewControllerDidFinish(previewController: RPPreviewViewController)
  optional func previewController(previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
