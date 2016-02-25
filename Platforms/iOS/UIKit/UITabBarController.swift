
@available(iOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(_ viewControllers: [UIViewController]?, animated animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  @available(iOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed changed: Bool)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willEndCustomizing viewControllers: [UIViewController], changed changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didEndCustomizing viewControllers: [UIViewController], changed changed: Bool)
  @available(iOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(_ tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientation(forPresentation tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
