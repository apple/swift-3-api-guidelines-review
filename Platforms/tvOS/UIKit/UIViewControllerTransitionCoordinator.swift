
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
  func viewControllerForKey(key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(tvOS 2.0, *)
  func containerView() -> UIView
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  @available(tvOS 2.0, *)
  func animateAlongsideTransitionInView(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func notifyWhenInteractionEndsUsingBlock(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(tvOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
