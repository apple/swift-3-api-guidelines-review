
@available(tvOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(tvOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(tvOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(tvOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(didComplete: Bool)
  @available(tvOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(tvOS 2.0, *)
  func initialFrameForViewController(vc: UIViewController) -> CGRect
  @available(tvOS 2.0, *)
  func finalFrameForViewController(vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 2.0, *)
  optional func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  optional func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(tvOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancelInteractiveTransition()
  func finishInteractiveTransition()
  init()
  @available(tvOS 7.0, *)
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
