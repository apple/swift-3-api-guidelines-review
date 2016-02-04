
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(tvOS 8.0, *)
  optional func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(tvOS 8.3, *)
  optional func presentationController(presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
@available(tvOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  func adaptivePresentationStyleForTraitCollection(traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  func presentedView() -> UIView?
  func frameOfPresentedViewInContainerView() -> CGRect
  func shouldPresentInFullscreen() -> Bool
  func shouldRemovePresentersView() -> Bool
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  init()
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
