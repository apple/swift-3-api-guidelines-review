
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
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(_ didComplete: Bool)
  @available(tvOS 2.0, *)
  func viewControllerForKey(_ key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(_ key: String) -> UIView?
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(tvOS 2.0, *)
  func initialFrameForViewController(_ vc: UIViewController) -> CGRect
  @available(tvOS 2.0, *)
  func finalFrameForViewController(_ vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  func animateTransition(_ transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(_ transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func animationControllerForPresentedController(_ presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 2.0, *)
  optional func animationControllerForDismissedController(_ dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  optional func presentationControllerForPresentedViewController(_ presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(tvOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func cancelInteractiveTransition()
  func finishInteractiveTransition()
  @available(tvOS 7.0, *)
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
}
