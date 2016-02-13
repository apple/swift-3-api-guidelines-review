
@available(OSX 10.10, *)
struct NSViewControllerTransitionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: NSViewControllerTransitionOptions { get }
  static var crossfade: NSViewControllerTransitionOptions { get }
  static var slideUp: NSViewControllerTransitionOptions { get }
  static var slideDown: NSViewControllerTransitionOptions { get }
  static var slideLeft: NSViewControllerTransitionOptions { get }
  static var slideRight: NSViewControllerTransitionOptions { get }
  static var slideForward: NSViewControllerTransitionOptions { get }
  static var slideBackward: NSViewControllerTransitionOptions { get }
  static var allowUserInteraction: NSViewControllerTransitionOptions { get }
}
@available(OSX 10.5, *)
class NSViewController : NSResponder, Coding, NSSeguePerforming, NSUserInterfaceItemIdentification {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  var representedObject: AnyObject?
  var title: String?
  var view: NSView
  func loadView()
  func commitEditing(delegate delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditing() -> Bool
  func discardEditing()
  @available(OSX 10.10, *)
  func viewDidLoad()
  @available(OSX 10.10, *)
  var isViewLoaded: Bool { get }
  @available(OSX 10.10, *)
  func viewWillAppear()
  @available(OSX 10.10, *)
  func viewDidAppear()
  @available(OSX 10.10, *)
  func viewWillDisappear()
  @available(OSX 10.10, *)
  func viewDidDisappear()
  @available(OSX 10.10, *)
  var preferredContentSize: Size
  @available(OSX 10.10, *)
  func updateViewConstraints()
  @available(OSX 10.10, *)
  func viewWillLayout()
  @available(OSX 10.10, *)
  func viewDidLayout()
  convenience init()
  @available(OSX 10.10, *)
  func prepare(for segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegue(identifier identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegue(identifier identifier: String, sender: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  var identifier: String?
}
extension NSViewController {
  @available(OSX 10.10, *)
  func present(viewController: NSViewController, animator: NSViewControllerPresentationAnimator)
  @available(OSX 10.10, *)
  func dismiss(viewController: NSViewController)
  @available(OSX 10.10, *)
  @IBAction func dismiss(sender: AnyObject?)
  @available(OSX 10.10, *)
  var presentedViewControllers: [NSViewController]? { get }
  @available(OSX 10.10, *)
  unowned(unsafe) var presenting: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  @available(OSX 10.10, *)
  func present(asSheet viewController: NSViewController)
  @available(OSX 10.10, *)
  func present(asModalWindow viewController: NSViewController)
  @available(OSX 10.10, *)
  func present(viewController: NSViewController, asPopoverRelativeTo positioningRect: Rect, of positioningView: NSView, preferredEdge: RectEdge, behavior: NSPopoverBehavior)
  @available(OSX 10.10, *)
  func transition(from fromViewController: NSViewController, to toViewController: NSViewController, options: NSViewControllerTransitionOptions = [], completionHandler completion: (() -> Void)? = nil)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var parent: NSViewController? { get }
  @available(OSX 10.10, *)
  var childViewControllers: [NSViewController]
  @available(OSX 10.10, *)
  func addChildViewController(childViewController: NSViewController)
  @available(OSX 10.10, *)
  func removeFromParentViewController()
  @available(OSX 10.10, *)
  func insertChildViewController(childViewController: NSViewController, at index: Int)
  @available(OSX 10.10, *)
  func removeChildViewController(at index: Int)
  @available(OSX 10.10, *)
  func preferredContentSizeDidChange(for viewController: NSViewController)
  @available(OSX 10.10, *)
  func viewWillTransition(to newSize: Size)
}
protocol NSViewControllerPresentationAnimator : ObjectProtocol {
  @available(OSX 10.10, *)
  func animatePresentationOf(viewController: NSViewController, from fromViewController: NSViewController)
  @available(OSX 10.10, *)
  func animateDismissalOf(viewController: NSViewController, from fromViewController: NSViewController)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSViewController : ExtensionRequestHandling {
  @available(OSX 10.10, *)
  var extensionContext: ExtensionContext? { get }
  @available(OSX 10.10, *)
  @IBOutlet var sourceItemView: NSView?
  @available(OSX 10.10, *)
  var preferredScreenOrigin: Point
  @available(OSX 10.10, *)
  var preferredMinimumSize: Size { get }
  @available(OSX 10.10, *)
  var preferredMaximumSize: Size { get }
  @available(OSX 10.10, *)
  func beginRequest(context: ExtensionContext)
}
