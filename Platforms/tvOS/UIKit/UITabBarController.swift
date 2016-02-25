
@available(tvOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(_ viewControllers: [UIViewController]?, animated animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  @available(tvOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  @available(tvOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didSelectItem item: UITabBarItem)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  @available(tvOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  @available(tvOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
