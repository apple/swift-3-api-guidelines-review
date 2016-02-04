
@available(iOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  @available(iOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  @available(iOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, willBeginCustomizingViewControllers viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, willEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  @available(iOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
