
enum UIPageViewControllerNavigationOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum UIPageViewControllerSpineLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Min
  case Mid
  case Max
}
enum UIPageViewControllerNavigationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Reverse
}
enum UIPageViewControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PageCurl
  case Scroll
}
let UIPageViewControllerOptionSpineLocationKey: String
@available(iOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(iOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]?)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var doubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)?)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController])
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, spineLocationForInterfaceOrientation orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation
  @available(iOS 7.0, *)
  optional func pageViewControllerSupportedInterfaceOrientations(pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func pageViewControllerPreferredInterfaceOrientationForPresentation(pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  @available(iOS 6.0, *)
  optional func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  optional func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
}
