
enum UIPageViewControllerNavigationOrientation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum UIPageViewControllerSpineLocation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Min
  case Mid
  case Max
}
enum UIPageViewControllerNavigationDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Reverse
}
enum UIPageViewControllerTransitionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case PageCurl
  case Scroll
}
let UIPageViewControllerOptionSpineLocationKey: String
@available(tvOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(tvOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation navigationOrientation: UIPageViewControllerNavigationOrientation, options options: [String : AnyObject]?)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var doubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(_ viewControllers: [UIViewController]?, direction direction: UIPageViewControllerNavigationDirection, animated animated: Bool, completion completion: ((Bool) -> Void)?)
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController])
  @available(tvOS 5.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  @available(tvOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  @available(tvOS 6.0, *)
  optional func presentationCountForPageViewController(_ pageViewController: UIPageViewController) -> Int
  @available(tvOS 6.0, *)
  optional func presentationIndexForPageViewController(_ pageViewController: UIPageViewController) -> Int
}
