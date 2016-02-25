
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
  @available(iOS 2.0, *)
  func viewControllerForKey(_ key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func viewForKey(_ key: String) -> UIView?
  @available(iOS 2.0, *)
  func containerView() -> UIView
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(_ animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  @available(iOS 2.0, *)
  func animateAlongsideTransitionInView(_ view: UIView?, animation animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func notifyWhenInteractionEndsUsingBlock(_ handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(iOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
