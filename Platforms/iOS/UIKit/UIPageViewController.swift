
enum UIPageViewControllerNavigationOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
enum UIPageViewControllerSpineLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case min
  case mid
  case max
}
enum UIPageViewControllerNavigationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case reverse
}
enum UIPageViewControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pageCurl
  case scroll
}
let UIPageViewControllerOptionSpineLocationKey: String
@available(iOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(iOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]? = [:])
  init?(coder: Coder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var isDoubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)? = nil)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation
  @available(iOS 7.0, *)
  optional func pageViewControllerSupportedInterfaceOrientations(pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func pageViewControllerPreferredInterfaceOrientationFor(presentation pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : ObjectProtocol {
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  @available(iOS 6.0, *)
  optional func presentationCountFor(pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  optional func presentationIndexFor(pageViewController: UIPageViewController) -> Int
}
