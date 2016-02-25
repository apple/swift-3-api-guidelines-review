
@available(tvOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case PrimaryHidden
  case AllVisible
  case PrimaryOverlay
}
@available(tvOS 8.0, *)
let UISplitViewControllerAutomaticDimension: CGFloat
@available(tvOS 3.2, *)
class UISplitViewController : UIViewController {
  var viewControllers: [UIViewController]
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(tvOS 5.1, *)
  var presentsWithGesture: Bool
  @available(tvOS 8.0, *)
  var collapsed: Bool { get }
  @available(tvOS 8.0, *)
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  @available(tvOS 8.0, *)
  var displayMode: UISplitViewControllerDisplayMode { get }
  @available(tvOS 8.0, *)
  func displayModeButtonItem() -> UIBarButtonItem
  @available(tvOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(tvOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
}
protocol UISplitViewControllerDelegate {
  @available(tvOS 8.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willChangeToDisplayMode displayMode: UISplitViewControllerDisplayMode)
  @available(tvOS 8.0, *)
  optional func targetDisplayModeForActionInSplitViewController(_ svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showViewController vc: UIViewController, sender sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForCollapsingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForExpandingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(tvOS 8.0, *)
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(tvOS 8.0, *)
  func separateSecondaryViewControllerForSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
}
