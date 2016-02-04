
protocol GKViewController {
}
class GKDialogController : NSResponder {
  @IBOutlet unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  func presentViewController(viewController: NSViewController) -> Bool
  @IBAction func dismiss(sender: AnyObject)
  init()
  init?(coder: NSCoder)
}
extension GKDialogController {
  class func sharedDialogController() -> GKDialogController
}
