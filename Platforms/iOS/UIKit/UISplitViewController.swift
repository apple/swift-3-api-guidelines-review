
@available(iOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case PrimaryHidden
  case AllVisible
  case PrimaryOverlay
}
@available(iOS 8.0, *)
let UISplitViewControllerAutomaticDimension: CGFloat
@available(iOS 3.2, *)
class UISplitViewController : UIViewController {
  var viewControllers: [UIViewController]
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(iOS 5.1, *)
  var presentsWithGesture: Bool
  @available(iOS 8.0, *)
  var isCollapsed: Bool { get }
  @available(iOS 8.0, *)
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  @available(iOS 8.0, *)
  var displayMode: UISplitViewControllerDisplayMode { get }
  @available(iOS 8.0, *)
  func displayModeButtonItem() -> UIBarButtonItem
  @available(iOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(iOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(iOS 8.0, *)
  func show(vc: UIViewController, sender: AnyObject?)
  @available(iOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  @available(iOS 8.0, *)
  optional func splitViewController(svc: UISplitViewController, willChangeTo displayMode: UISplitViewControllerDisplayMode)
  @available(iOS 8.0, *)
  optional func targetDisplayModeForActionIn(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, show vc: UIViewController, sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func primaryViewControllerForCollapsing(splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func primaryViewControllerForExpanding(splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 7.0, *)
  optional func splitViewControllerSupportedInterfaceOrientations(splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func splitViewControllerPreferredInterfaceOrientationFor(presentation splitViewController: UISplitViewController) -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(svc: UISplitViewController, willHide aViewController: UIViewController, withBarButtonItem barButtonItem: UIBarButtonItem, forPopoverController pc: UIPopoverController)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(svc: UISplitViewController, willShow aViewController: UIViewController, invalidatingBarButtonItem barButtonItem: UIBarButtonItem)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: instead")
  optional func splitViewController(svc: UISplitViewController, popoverController pc: UIPopoverController, willPresent aViewController: UIViewController)
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use preferredDisplayMode instead")
  optional func splitViewController(svc: UISplitViewController, shouldHide vc: UIViewController, in orientation: UIInterfaceOrientation) -> Bool
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(iOS 8.0, *)
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  func separateSecondaryViewControllerFor(splitViewController: UISplitViewController) -> UIViewController?
}
