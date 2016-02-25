
@available(iOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue rawValue: Int)
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
  var collapsed: Bool { get }
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
}
protocol UISplitViewControllerDelegate {
  @available(iOS 8.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willChangeToDisplayMode displayMode: UISplitViewControllerDisplayMode)
  @available(iOS 8.0, *)
  optional func targetDisplayModeForActionInSplitViewController(_ svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showViewController vc: UIViewController, sender sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func primaryViewControllerForCollapsingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func primaryViewControllerForExpandingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 7.0, *)
  optional func splitViewControllerSupportedInterfaceOrientations(_ splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func splitViewControllerPreferredInterfaceOrientationForPresentation(_ splitViewController: UISplitViewController) -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willHideViewController aViewController: UIViewController, withBarButtonItem barButtonItem: UIBarButtonItem, forPopoverController pc: UIPopoverController)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willShowViewController aViewController: UIViewController, invalidatingBarButtonItem barButtonItem: UIBarButtonItem)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: instead")
  optional func splitViewController(_ svc: UISplitViewController, popoverController pc: UIPopoverController, willPresentViewController aViewController: UIViewController)
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use preferredDisplayMode instead")
  optional func splitViewController(_ svc: UISplitViewController, shouldHideViewController vc: UIViewController, inOrientation orientation: UIInterfaceOrientation) -> Bool
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(iOS 8.0, *)
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  func separateSecondaryViewControllerForSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
}
