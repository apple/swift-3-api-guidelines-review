
protocol GKViewController {
}
class GKDialogController : NSResponder {
  @IBOutlet unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  func present(_ viewController: NSViewController) -> Bool
  @IBAction func dismiss(_ sender: AnyObject)
}
extension GKDialogController {
  class func shared() -> GKDialogController
}
