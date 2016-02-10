
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
@available(tvOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(tvOS 5.0, *)
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
  @available(tvOS 6.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  @available(tvOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
}
protocol UIPageViewControllerDataSource : ObjectProtocol {
  @available(tvOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  @available(tvOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  @available(tvOS 6.0, *)
  optional func presentationCount(forPageViewController pageViewController: UIPageViewController) -> Int
  @available(tvOS 6.0, *)
  optional func presentationIndex(forPageViewController pageViewController: UIPageViewController) -> Int
}
