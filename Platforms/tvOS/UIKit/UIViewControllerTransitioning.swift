
@available(tvOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(tvOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(tvOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(tvOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : ObjectProtocol {
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
  func viewController(forKey key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func view(forKey key: String) -> UIView?
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(tvOS 2.0, *)
  func initialFrame(for vc: UIViewController) -> CGRect
  @available(tvOS 2.0, *)
  func finalFrame(for vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : ObjectProtocol {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : ObjectProtocol {
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : ObjectProtocol {
  @available(tvOS 2.0, *)
  optional func animationController(forPresentedController presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 2.0, *)
  optional func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionController(forPresentation animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionController(forDismissal animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  optional func presentationController(forPresentedViewController presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(tvOS 7.0, *)
class UIPercentDrivenInteractiveTransition : Object, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancel()
  func finish()
  init()
  @available(tvOS 7.0, *)
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
