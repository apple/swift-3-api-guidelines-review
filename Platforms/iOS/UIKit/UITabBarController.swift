
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
  func tabBar(_ tabBar: UITabBar, didSelectItem item: UITabBarItem)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed changed: Bool)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizingViewControllers viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willEndCustomizingViewControllers viewControllers: [UIViewController], changed changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didEndCustomizingViewControllers viewControllers: [UIViewController], changed changed: Bool)
  @available(iOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(_ tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(_ tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
