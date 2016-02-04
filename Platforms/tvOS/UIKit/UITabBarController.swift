
@available(tvOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, Coding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  @available(tvOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(tvOS 2.0, *)
  func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
}
protocol UITabBarControllerDelegate : ObjectProtocol {
  @available(tvOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  @available(tvOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didSelect viewController: UIViewController)
  @available(tvOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
