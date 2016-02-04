
@available(OSX 10.10, *)
struct NSViewControllerTransitionOptions : OptionSetType {
  init(rawValue: UInt)
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
  init?(coder: NSCoder)
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  var representedObject: AnyObject?
  var title: String?
  var view: NSView
  func loadView()
  func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditing() -> Bool
  func discardEditing()
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
  convenience init()
  @available(OSX 10.10, *)
  func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  var identifier: String?
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentViewController(viewController: NSViewController, animator: NSViewControllerPresentationAnimator)
  @available(OSX 10.10, *)
  func dismissViewController(viewController: NSViewController)
  @available(OSX 10.10, *)
  @IBAction func dismissController(sender: AnyObject?)
  @available(OSX 10.10, *)
  var presentedViewControllers: [NSViewController]? { get }
  @available(OSX 10.10, *)
  unowned(unsafe) var presentingViewController: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentViewControllerAsSheet(viewController: NSViewController)
  @available(OSX 10.10, *)
  func presentViewControllerAsModalWindow(viewController: NSViewController)
  @available(OSX 10.10, *)
  func presentViewController(viewController: NSViewController, asPopoverRelativeToRect positioningRect: NSRect, ofView positioningView: NSView, preferredEdge: NSRectEdge, behavior: NSPopoverBehavior)
  @available(OSX 10.10, *)
  func transitionFromViewController(fromViewController: NSViewController, toViewController: NSViewController, options: NSViewControllerTransitionOptions, completionHandler completion: (() -> Void)?)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var parentViewController: NSViewController? { get }
  @available(OSX 10.10, *)
  var childViewControllers: [NSViewController]
  @available(OSX 10.10, *)
  func addChildViewController(childViewController: NSViewController)
  @available(OSX 10.10, *)
  func removeFromParentViewController()
  @available(OSX 10.10, *)
  func insertChildViewController(childViewController: NSViewController, atIndex index: Int)
  @available(OSX 10.10, *)
  func removeChildViewControllerAtIndex(index: Int)
  @available(OSX 10.10, *)
  func preferredContentSizeDidChangeForViewController(viewController: NSViewController)
  @available(OSX 10.10, *)
  func viewWillTransitionToSize(newSize: NSSize)
}
protocol NSViewControllerPresentationAnimator : NSObjectProtocol {
  @available(OSX 10.10, *)
  func animatePresentationOfViewController(viewController: NSViewController, fromViewController: NSViewController)
  @available(OSX 10.10, *)
  func animateDismissalOfViewController(viewController: NSViewController, fromViewController: NSViewController)
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
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
