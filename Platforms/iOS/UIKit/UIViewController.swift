
enum UIModalTransitionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case coverVertical
  case flipHorizontal
  case crossDissolve
  @available(iOS 3.2, *)
  case partialCurl
}
enum UIModalPresentationStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case fullScreen
  @available(iOS 3.2, *)
  case pageSheet
  @available(iOS 3.2, *)
  case formSheet
  @available(iOS 3.2, *)
  case currentContext
  @available(iOS 7.0, *)
  case custom
  @available(iOS 8.0, *)
  case overFullScreen
  @available(iOS 8.0, *)
  case overCurrentContext
  @available(iOS 8.0, *)
  case popover
  @available(iOS 7.0, *)
  case none
}
protocol UIContentContainer : NSObjectProtocol {
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
}
@available(iOS 8.0, *)
let UIViewControllerShowDetailTargetDidChangeNotification: String
@available(iOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var view: UIView!
  func loadView()
  @available(iOS 9.0, *)
  func loadViewIfNeeded()
  @available(iOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(iOS 3.0, *)
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  @available(iOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(iOS 5.0, *)
  func performSegue(withIdentifier identifier: String, sender sender: AnyObject?)
  @available(iOS 6.0, *)
  func shouldPerformSegue(withIdentifier identifier: String, sender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func prepare(for segue: UIStoryboardSegue, sender sender: AnyObject?)
  @available(iOS 6.0, *)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(iOS 9.0, *)
  func allowedChildViewControllersForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  func childViewControllerContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS, introduced=6.0, deprecated=9.0)
  func forUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(iOS 9.0, *)
  func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(iOS, introduced=6.0, deprecated=9.0)
  func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
  @available(iOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(iOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(iOS 5.0, *)
  var presented: UIViewController? { get }
  @available(iOS 5.0, *)
  var presenting: UIViewController? { get }
  @available(iOS 5.0, *)
  var definesPresentationContext: Bool
  @available(iOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(iOS 5.0, *)
  func isBeingPresented() -> Bool
  @available(iOS 5.0, *)
  func isBeingDismissed() -> Bool
  @available(iOS 5.0, *)
  func isMovingToParentViewController() -> Bool
  @available(iOS 5.0, *)
  func isMovingFromParentViewController() -> Bool
  @available(iOS 5.0, *)
  func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismiss(animated flag: Bool, completion completion: (() -> Void)? = nil)
  @available(iOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(iOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(iOS 7.0, *)
  var modalPresentationCapturesStatusBarAppearance: Bool
  @available(iOS 4.3, *)
  func disablesAutomaticKeyboardDismissal() -> Bool
  @available(iOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(iOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(iOS 7.0, *)
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(iOS 7.0, *)
  var preferredContentSize: CGSize
  @available(iOS 7.0, *)
  func preferredStatusBarStyle() -> UIStatusBarStyle
  @available(iOS 7.0, *)
  func prefersStatusBarHidden() -> Bool
  @available(iOS 7.0, *)
  func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation
  @available(iOS 7.0, *)
  func setNeedsStatusBarAppearanceUpdate()
  @available(iOS 8.0, *)
  func targetViewController(forAction action: Selector, sender sender: AnyObject?) -> UIViewController?
  @available(iOS 8.0, *)
  func show(_ vc: UIViewController, sender sender: AnyObject?)
  @available(iOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender sender: AnyObject?)
  @available(iOS 2.0, *)
  func encode(with aCoder: NSCoder)
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()
  @available(iOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
  @available(iOS 5.0, *)
  class func attemptRotationToDeviceOrientation()
  @available(iOS 6.0, *)
  func shouldAutorotate() -> Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientations() -> UIInterfaceOrientationMask
  @available(iOS 6.0, *)
  func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Header views are animated along with the rest of the view hierarchy")
  func rotatingHeaderView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Footer views are animated along with the rest of the view hierarchy")
  func rotatingFooterView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0)
  var interfaceOrientation: UIInterfaceOrientation { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration duration: NSTimeInterval)
  @available(iOS, introduced=2.0, deprecated=8.0)
  func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration duration: NSTimeInterval)
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
  @available(iOS, introduced=3.0, deprecated=8.0)
  var searchDisplayController: UISearchDisplayController? { get }
}
@available(iOS 5.0, *)
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  @available(iOS 5.0, *)
  var childViewControllers: [UIViewController] { get }
  @available(iOS 5.0, *)
  func addChildViewController(_ childController: UIViewController)
  @available(iOS 5.0, *)
  func removeFromParentViewController()
  @available(iOS 5.0, *)
  func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration duration: NSTimeInterval, options options: UIViewAnimationOptions = [], animations animations: (() -> Void)?, completion completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func beginAppearanceTransition(_ isAppearing: Bool, animated animated: Bool)
  @available(iOS 5.0, *)
  func endAppearanceTransition()
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarStyle() -> UIViewController?
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarHidden() -> UIViewController?
  @available(iOS 8.0, *)
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(iOS 8.0, *)
  func overrideTraitCollection(forChildViewController childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(iOS, introduced=6.0, deprecated=8.0, message="Manually forward viewWillTransitionToSize:withTransitionCoordinator: if necessary")
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  @available(iOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(iOS 5.0, *)
  func willMove(toParentViewController parent: UIViewController?)
  @available(iOS 5.0, *)
  func didMove(toParentViewController parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(iOS 6.0, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableState(with coder: NSCoder)
  @available(iOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  @available(iOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(iOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(iOS 7.0, *)
  var topLayoutGuide: UILayoutSupport { get }
  @available(iOS 7.0, *)
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  @available(iOS 9.0, *)
  func addKeyCommand(_ keyCommand: UIKeyCommand)
  @available(iOS 9.0, *)
  func removeKeyCommand(_ keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  @available(iOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(iOS 8.0, *)
  func beginRequest(with context: NSExtensionContext)
}
extension UIViewController {
  @available(iOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(iOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(iOS 9.0, *)
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(iOS 9.0, *)
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(iOS 9.0, *)
  var sourceView: UIView { get }
  @available(iOS 9.0, *)
  var sourceRect: CGRect { get set }
}
@available(iOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(iOS 9.0, *)
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func registerForPreviewing(with delegate: UIViewControllerPreviewingDelegate, sourceView sourceView: UIView) -> UIViewControllerPreviewing
  @available(iOS 9.0, *)
  func unregisterForPreviewing(withContext previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func previewActionItems() -> [UIPreviewActionItem]
}
@available(iOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
@available(iOS 9.0, *)
enum UIPreviewActionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case selected
  case destructive
}
@available(iOS 9.0, *)
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title title: String, style style: UIPreviewActionStyle, handler handler: (UIPreviewAction, UIViewController) -> Void)
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  var title: String { get }
}
@available(iOS 9.0, *)
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title title: String, style style: UIPreviewActionStyle, actions actions: [UIPreviewAction])
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  var title: String { get }
}
