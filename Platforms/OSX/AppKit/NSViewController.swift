
@available(OSX 10.10, *)
struct NSViewControllerTransitionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: NSViewControllerTransitionOptions { get }
  static var Crossfade: NSViewControllerTransitionOptions { get }
  static var SlideUp: NSViewControllerTransitionOptions { get }
  static var SlideDown: NSViewControllerTransitionOptions { get }
  static var SlideLeft: NSViewControllerTransitionOptions { get }
  static var SlideRight: NSViewControllerTransitionOptions { get }
  static var SlideForward: NSViewControllerTransitionOptions { get }
  static var SlideBackward: NSViewControllerTransitionOptions { get }
  static var AllowUserInteraction: NSViewControllerTransitionOptions { get }
}
@available(OSX 10.5, *)
class NSViewController : NSResponder, NSCoding, NSSeguePerforming, NSUserInterfaceItemIdentification {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  var representedObject: AnyObject?
  var title: String?
  var view: NSView
  func loadView()
  @available(OSX 10.10, *)
  func viewDidLoad()
  @available(OSX 10.10, *)
  var viewLoaded: Bool { get }
  @available(OSX 10.10, *)
  func viewWillAppear()
  @available(OSX 10.10, *)
  func viewDidAppear()
  @available(OSX 10.10, *)
  func viewWillDisappear()
  @available(OSX 10.10, *)
  func viewDidDisappear()
  @available(OSX 10.10, *)
  var preferredContentSize: NSSize
  @available(OSX 10.10, *)
  func updateViewConstraints()
  @available(OSX 10.10, *)
  func viewWillLayout()
  @available(OSX 10.10, *)
  func viewDidLayout()
  @available(OSX 10.10, *)
  func prepareForSegue(_ segue: NSStoryboardSegue, sender sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegueWithIdentifier(_ identifier: String, sender sender: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  var identifier: String?
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentViewController(_ viewController: NSViewController, animator animator: NSViewControllerPresentationAnimator)
  @available(OSX 10.10, *)
  func dismissViewController(_ viewController: NSViewController)
  @available(OSX 10.10, *)
  @IBAction func dismissController(_ sender: AnyObject?)
  @available(OSX 10.10, *)
  var presentedViewControllers: [NSViewController]? { get }
  @available(OSX 10.10, *)
  unowned(unsafe) var presentingViewController: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentViewControllerAsSheet(_ viewController: NSViewController)
  @available(OSX 10.10, *)
  func presentViewControllerAsModalWindow(_ viewController: NSViewController)
  @available(OSX 10.10, *)
  func presentViewController(_ viewController: NSViewController, asPopoverRelativeToRect positioningRect: NSRect, ofView positioningView: NSView, preferredEdge preferredEdge: NSRectEdge, behavior behavior: NSPopoverBehavior)
  @available(OSX 10.10, *)
  func transitionFromViewController(_ fromViewController: NSViewController, toViewController toViewController: NSViewController, options options: NSViewControllerTransitionOptions, completionHandler completion: (() -> Void)?)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var parentViewController: NSViewController? { get }
  @available(OSX 10.10, *)
  var childViewControllers: [NSViewController]
  @available(OSX 10.10, *)
  func addChildViewController(_ childViewController: NSViewController)
  @available(OSX 10.10, *)
  func removeFromParentViewController()
  @available(OSX 10.10, *)
  func insertChildViewController(_ childViewController: NSViewController, atIndex index: Int)
  @available(OSX 10.10, *)
  func removeChildViewControllerAtIndex(_ index: Int)
  @available(OSX 10.10, *)
  func preferredContentSizeDidChangeForViewController(_ viewController: NSViewController)
  @available(OSX 10.10, *)
  func viewWillTransitionToSize(_ newSize: NSSize)
}
protocol NSViewControllerPresentationAnimator : NSObjectProtocol {
  @available(OSX 10.10, *)
  func animatePresentationOfViewController(_ viewController: NSViewController, fromViewController fromViewController: NSViewController)
  @available(OSX 10.10, *)
  func animateDismissalOfViewController(_ viewController: NSViewController, fromViewController fromViewController: NSViewController)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSViewController : NSExtensionRequestHandling {
  @available(OSX 10.10, *)
  var extensionContext: NSExtensionContext? { get }
  @available(OSX 10.10, *)
  @IBOutlet var sourceItemView: NSView?
  @available(OSX 10.10, *)
  var preferredScreenOrigin: NSPoint
  @available(OSX 10.10, *)
  var preferredMinimumSize: NSSize { get }
  @available(OSX 10.10, *)
  var preferredMaximumSize: NSSize { get }
  @available(OSX 10.10, *)
  func beginRequestWithExtensionContext(_ context: NSExtensionContext)
}
