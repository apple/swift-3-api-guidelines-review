
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresent(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresent(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismiss(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismiss(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func present(_ searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResults(for searchController: UISearchController)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  @available(iOS 8.0, *)
  func animationController(forPresentedController presented: UIViewController, presenting presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func interactionController(forPresentation animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func interactionController(forDismissal animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func presentationController(forPresentedViewController presented: UIViewController, presenting presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  @available(iOS 8.0, *)
  func animateTransition(_ transitionContext: UIViewControllerContextTransitioning)
  @available(iOS 8.0, *)
  func animationEnded(_ transitionCompleted: Bool)
}
