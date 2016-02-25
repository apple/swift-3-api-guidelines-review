
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(tvOS 8.0, *)
  optional func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(tvOS 8.3, *)
  optional func presentationController(_ presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
@available(tvOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController presentedViewController: UIViewController, presenting presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  func adaptivePresentationStyle(for traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  func presentedView() -> UIView?
  func frameOfPresentedViewInContainerView() -> CGRect
  func shouldPresentInFullscreen() -> Bool
  func shouldRemovePresentersView() -> Bool
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(_ completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(_ completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(tvOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
}
