
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case CrossDissolve
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
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
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
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
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(tvOS 6.0, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
  @available(tvOS 6.0, *)
  func canPerformUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(tvOS 9.0, *)
  func allowedChildViewControllersForUnwindingFromSource(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(tvOS 9.0, *)
  func childViewControllerContainingSegueSource(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func viewControllerForUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(tvOS 9.0, *)
  func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
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
  func presentViewController(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
  @available(tvOS 5.0, *)
  func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)?)
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
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  @available(tvOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  @available(tvOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
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
extension UIViewController {
}
extension UIViewController {
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
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
  func addChildViewController(childController: UIViewController)
  @available(tvOS 5.0, *)
  func removeFromParentViewController()
  @available(tvOS 5.0, *)
  func transitionFromViewController(fromViewController: UIViewController, toViewController: UIViewController, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 5.0, *)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  @available(tvOS 5.0, *)
  func endAppearanceTransition()
  @available(tvOS 8.0, *)
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(tvOS 8.0, *)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(tvOS 5.0, *)
  func willMoveToParentViewController(parent: UIViewController?)
  @available(tvOS 5.0, *)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(tvOS 6.0, *)
  func encodeRestorableStateWithCoder(coder: NSCoder)
  @available(tvOS 6.0, *)
  func decodeRestorableStateWithCoder(coder: NSCoder)
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
  func addKeyCommand(keyCommand: UIKeyCommand)
  @available(tvOS 9.0, *)
  func removeKeyCommand(keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  @available(tvOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(tvOS 8.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
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
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(tvOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func registerForPreviewingWithDelegate(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(tvOS 9.0, *)
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
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
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
@available(tvOS 9.0, *)
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
@available(tvOS 9.0, *)
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
