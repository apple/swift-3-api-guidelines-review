
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresentSearchController(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresentSearchController(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismissSearchController(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismissSearchController(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func presentSearchController(searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResultsForSearchController(searchController: UISearchController)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var active: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  @available(iOS 8.0, *)
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  @available(iOS 8.0, *)
  func animationEnded(transitionCompleted: Bool)
}
