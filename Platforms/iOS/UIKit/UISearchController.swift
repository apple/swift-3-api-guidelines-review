
protocol UISearchControllerDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresent(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresent(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismiss(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismiss(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func present(searchController: UISearchController)
}
protocol UISearchResultsUpdating : ObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResults(for searchController: UISearchController)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 8.0, *)
  func animationController(forPresentedController presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func interactionController(forPresentation animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func interactionController(forDismissal animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func presentationController(forPresentedViewController presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  @available(iOS 8.0, *)
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  @available(iOS 8.0, *)
  func animationEnded(transitionCompleted: Bool)
}
