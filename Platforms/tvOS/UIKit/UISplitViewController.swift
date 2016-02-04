
@available(tvOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue: Int)
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
  var isCollapsed: Bool { get }
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
  @available(tvOS 8.0, *)
  func show(vc: UIViewController, sender: AnyObject?)
  @available(tvOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  @available(tvOS 8.0, *)
  optional func splitViewController(svc: UISplitViewController, willChangeTo displayMode: UISplitViewControllerDisplayMode)
  @available(tvOS 8.0, *)
  optional func targetDisplayModeForActionIn(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, show vc: UIViewController, sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForCollapsing(splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForExpanding(splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(tvOS 8.0, *)
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(tvOS 8.0, *)
  func separateSecondaryViewControllerFor(splitViewController: UISplitViewController) -> UIViewController?
}
