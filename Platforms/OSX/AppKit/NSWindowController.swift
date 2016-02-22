
class NSWindowController : NSResponder, NSCoding, NSSeguePerforming {
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  var windowNibName: String? { get }
  var windowNibPath: String? { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  var windowFrameAutosaveName: String?
  var shouldCascadeWindows: Bool
  unowned(unsafe) var document: @sil_unmanaged AnyObject?
  func setDocumentEdited(dirtyFlag: Bool)
  var shouldCloseDocument: Bool
  func synchronizeWindowTitleWithDocumentName()
  func windowTitle(forDocumentDisplayName displayName: String) -> String
  @available(OSX 10.10, *)
  var contentViewController: NSViewController?
  var window: NSWindow?
  var isWindowLoaded: Bool { get }
  func windowWillLoad()
  func windowDidLoad()
  func loadWindow()
  func close()
  @IBAction func showWindow(sender: AnyObject?)
  convenience init()
  @available(OSX 10.10, *)
  func prepare(for segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegue(identifier identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegue(withIdentifier identifier: String, sender: AnyObject?) -> Bool
}
struct __wcFlags {
  var shouldCloseDocument: UInt32
  var shouldCascade: UInt32
  var nibIsLoaded: UInt32
  var nibNameIsPath: UInt32
  var settingWindowsContentViewController: UInt32
  var didInitWithCoder: UInt32
  var nibIsMakingConnections: UInt32
  var sentWindowWillLoad: UInt32
  var RESERVED: UInt32
  init()
  init(shouldCloseDocument: UInt32, shouldCascade: UInt32, nibIsLoaded: UInt32, nibNameIsPath: UInt32, settingWindowsContentViewController: UInt32, didInitWithCoder: UInt32, nibIsMakingConnections: UInt32, sentWindowWillLoad: UInt32, RESERVED: UInt32)
}
extension NSWindowController {
  @available(OSX 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSWindowController {
  @available(OSX 10.10, *)
  @IBAction func dismiss(sender: AnyObject?)
}
