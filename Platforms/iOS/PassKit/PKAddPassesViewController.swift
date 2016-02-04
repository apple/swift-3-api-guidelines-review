
protocol PKAddPassesViewControllerDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func addPassesViewControllerDidFinish(controller: PKAddPassesViewController)
}
@available(iOS 6.0, *)
class PKAddPassesViewController : UIViewController {
  init(pass: PKPass)
  @available(iOS 7.0, *)
  init(passes: [PKPass])
  @available(iOS 8.0, *)
  class func canAddPasses() -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKAddPassesViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
