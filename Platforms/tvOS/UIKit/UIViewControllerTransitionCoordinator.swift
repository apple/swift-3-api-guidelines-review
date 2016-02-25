
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
  func viewControllerForKey(_ key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(_ key: String) -> UIView?
  @available(tvOS 2.0, *)
  func containerView() -> UIView
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(_ animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  @available(tvOS 2.0, *)
  func animateAlongsideTransitionInView(_ view: UIView?, animation animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func notifyWhenInteractionEndsUsingBlock(_ handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(tvOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
