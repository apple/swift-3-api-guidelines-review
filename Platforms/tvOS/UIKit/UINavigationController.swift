
enum UINavigationControllerOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Push
  case Pop
}
let UINavigationControllerHideShowBarDuration: CGFloat
@available(tvOS 2.0, *)
class UINavigationController : UIViewController {
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(viewController: UIViewController, animated: Bool)
  func popViewControllerAnimated(animated: Bool) -> UIViewController?
  func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(tvOS 3.0, *)
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var navigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(tvOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool)
  @available(tvOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool)
  @available(tvOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
}
