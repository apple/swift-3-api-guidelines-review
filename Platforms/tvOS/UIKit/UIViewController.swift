
enum UIModalTransitionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case CrossDissolve
}
enum UIModalPresentationStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  @available(tvOS 3.2, *)
  case CurrentContext
  @available(tvOS 7.0, *)
  case Custom
  @available(tvOS 8.0, *)
  case OverFullScreen
  @available(tvOS 8.0, *)
  case OverCurrentContext
  @available(tvOS 7.0, *)
  case None
}
protocol UIContentContainer : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(_ container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(_ size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(_ newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
@available(tvOS 8.0, *)
let UIViewControllerShowDetailTargetDidChangeNotification: String
@available(tvOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var view: UIView!
  func loadView()
  @available(tvOS 9.0, *)
  func loadViewIfNeeded()
  @available(tvOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(tvOS 3.0, *)
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  @available(tvOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(tvOS 5.0, *)
  func performSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?)
  @available(tvOS 6.0, *)
  func shouldPerformSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func prepareForSegue(_ segue: UIStoryboardSegue, sender sender: AnyObject?)
  @available(tvOS 6.0, *)
  func canPerformUnwindSegueAction(_ action: Selector, fromViewController fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(tvOS 9.0, *)
  func allowedChildViewControllersForUnwindingFromSource(_ source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(tvOS 9.0, *)
  func childViewControllerContainingSegueSource(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func viewControllerForUnwindSegueAction(_ action: Selector, fromViewController fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(tvOS 9.0, *)
  func unwindForSegue(_ unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func segueForUnwindingToViewController(_ toViewController: UIViewController, fromViewController fromViewController: UIViewController, identifier identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
  @available(tvOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(tvOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parentViewController: @sil_weak UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentedViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentingViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var definesPresentationContext: Bool
  @available(tvOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(tvOS 5.0, *)
  func isBeingPresented() -> Bool
  @available(tvOS 5.0, *)
  func isBeingDismissed() -> Bool
  @available(tvOS 5.0, *)
  func isMovingToParentViewController() -> Bool
  @available(tvOS 5.0, *)
  func isMovingFromParentViewController() -> Bool
  @available(tvOS 5.0, *)
  func presentViewController(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion completion: (() -> Void)?)
  @available(tvOS 5.0, *)
  func dismissViewControllerAnimated(_ flag: Bool, completion completion: (() -> Void)?)
  @available(tvOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(tvOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(tvOS 4.3, *)
  func disablesAutomaticKeyboardDismissal() -> Bool
  @available(tvOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(tvOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(tvOS 7.0, *)
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(tvOS 7.0, *)
  var preferredContentSize: CGSize
  @available(tvOS 8.0, *)
  func targetViewControllerForAction(_ action: Selector, sender sender: AnyObject?) -> UIViewController?
  @available(tvOS 8.0, *)
  func showViewController(_ vc: UIViewController, sender sender: AnyObject?)
  @available(tvOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender sender: AnyObject?)
  @available(tvOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(_ container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(_ size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(_ newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(_ context: UIFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(_ context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
}
extension UIViewController {
  var editing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
}
@available(tvOS 5.0, *)
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  @available(tvOS 5.0, *)
  var childViewControllers: [UIViewController] { get }
  @available(tvOS 5.0, *)
  func addChildViewController(_ childController: UIViewController)
  @available(tvOS 5.0, *)
  func removeFromParentViewController()
  @available(tvOS 5.0, *)
  func transitionFromViewController(_ fromViewController: UIViewController, toViewController toViewController: UIViewController, duration duration: NSTimeInterval, options options: UIViewAnimationOptions, animations animations: (() -> Void)?, completion completion: ((Bool) -> Void)?)
  @available(tvOS 5.0, *)
  func beginAppearanceTransition(_ isAppearing: Bool, animated animated: Bool)
  @available(tvOS 5.0, *)
  func endAppearanceTransition()
  @available(tvOS 8.0, *)
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(tvOS 8.0, *)
  func overrideTraitCollectionForChildViewController(_ childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(tvOS 5.0, *)
  func willMoveToParentViewController(_ parent: UIViewController?)
  @available(tvOS 5.0, *)
  func didMoveToParentViewController(_ parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(tvOS 6.0, *)
  func encodeRestorableStateWithCoder(_ coder: NSCoder)
  @available(tvOS 6.0, *)
  func decodeRestorableStateWithCoder(_ coder: NSCoder)
  @available(tvOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(tvOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(tvOS 7.0, *)
  var topLayoutGuide: UILayoutSupport { get }
  @available(tvOS 7.0, *)
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func addKeyCommand(_ keyCommand: UIKeyCommand)
  @available(tvOS 9.0, *)
  func removeKeyCommand(_ keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  @available(tvOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(tvOS 8.0, *)
  func beginRequestWithExtensionContext(_ context: NSExtensionContext)
}
extension UIViewController {
  @available(tvOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(tvOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(tvOS 9.0, *)
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(tvOS 9.0, *)
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(tvOS 9.0, *)
  var sourceView: UIView { get }
  @available(tvOS 9.0, *)
  var sourceRect: CGRect { get set }
}
@available(tvOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(tvOS 9.0, *)
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func registerForPreviewingWithDelegate(_ delegate: UIViewControllerPreviewingDelegate, sourceView sourceView: UIView) -> UIViewControllerPreviewing
  @available(tvOS 9.0, *)
  func unregisterForPreviewingWithContext(_ previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func previewActionItems() -> [UIPreviewActionItem]
}
@available(tvOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
@available(tvOS 9.0, *)
enum UIPreviewActionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
@available(tvOS 9.0, *)
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title title: String, style style: UIPreviewActionStyle, handler handler: (UIPreviewAction, UIViewController) -> Void)
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
@available(tvOS 9.0, *)
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title title: String, style style: UIPreviewActionStyle, actions actions: [UIPreviewAction])
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
