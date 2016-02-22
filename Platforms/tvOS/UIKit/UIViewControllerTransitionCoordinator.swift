
protocol UIViewControllerTransitionCoordinatorContext : NSObjectProtocol {
  func isAnimated() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func initiallyInteractive() -> Bool
  func isInteractive() -> Bool
  func isCancelled() -> Bool
  func transitionDuration() -> NSTimeInterval
  func percentComplete() -> CGFloat
  func completionVelocity() -> CGFloat
  func completionCurve() -> UIViewAnimationCurve
  @available(tvOS 2.0, *)
  func viewController(forKey key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func view(forKey key: String) -> UIView?
  @available(tvOS 2.0, *)
  func containerView() -> UIView
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animate(alongsideTransition animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(tvOS 2.0, *)
  func animateAlongsideTransition(in view: UIView?, animation animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  func notifyWhenInteractionEnds(_ handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(tvOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
