
protocol GKViewController {
}
class GKDialogController : NSResponder {
  @IBOutlet unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  func present(viewController: NSViewController) -> Bool
  @IBAction func dismiss(sender: AnyObject)
  init()
  init?(coder: Coder)
}
extension GKDialogController {
  class func shared() -> GKDialogController
}
