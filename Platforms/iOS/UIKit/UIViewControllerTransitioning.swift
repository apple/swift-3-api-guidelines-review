
@available(iOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(iOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(iOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(iOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(iOS 2.0, *)
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(_ didComplete: Bool)
  @available(iOS 2.0, *)
  func viewController(forKey key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func view(forKey key: String) -> UIView?
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(iOS 2.0, *)
  func initialFrame(for vc: UIViewController) -> CGRect
  @available(iOS 2.0, *)
  func finalFrame(for vc: UIViewController) -> CGRect
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
  @available(iOS 2.0, *)
  optional func animationController(forPresentedController presented: UIViewController, presenting presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 2.0, *)
  optional func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionController(forPresentation animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionController(forDismissal animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  optional func presentationController(forPresentedViewController presented: UIViewController, presenting presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(iOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func update(_ percentComplete: CGFloat)
  func cancel()
  func finish()
  @available(iOS 7.0, *)
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
}
