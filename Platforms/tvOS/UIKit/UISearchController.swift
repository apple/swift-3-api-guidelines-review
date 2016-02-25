
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func willPresentSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didPresentSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func willDismissSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didDismissSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func presentSearchController(_ searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func updateSearchResultsForSearchController(_ searchController: UISearchController)
}
@available(tvOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var active: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  @available(tvOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  @available(tvOS 8.0, *)
  func animationControllerForPresentedController(_ presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 8.0, *)
  func animationControllerForDismissedController(_ dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 8.0, *)
  func interactionControllerForPresentation(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  func interactionControllerForDismissal(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  func presentationControllerForPresentedViewController(_ presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(tvOS 8.0, *)
  func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  @available(tvOS 8.0, *)
  func animateTransition(_ transitionContext: UIViewControllerContextTransitioning)
  @available(tvOS 8.0, *)
  func animationEnded(_ transitionCompleted: Bool)
}
