
@available(iOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(iOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(iOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(iOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : ObjectProtocol {
  @available(iOS 2.0, *)
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(didComplete: Bool)
  @available(iOS 2.0, *)
  func viewController(forKey key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func view(forKey key: String) -> UIView?
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(iOS 2.0, *)
  func initialFrame(forViewController vc: UIViewController) -> CGRect
  @available(iOS 2.0, *)
  func finalFrame(forViewController vc: UIViewController) -> CGRect
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
  @available(iOS 2.0, *)
  optional func animationController(forPresentedController presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 2.0, *)
  optional func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionController(forPresentation animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionController(forDismissal animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  optional func presentationController(forPresentedViewController presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(iOS 7.0, *)
class UIPercentDrivenInteractiveTransition : Object, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancel()
  func finish()
  init()
  @available(iOS 7.0, *)
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
