
class CANetworkBrowserWindowController : NSWindowController {
  class func isAVBSupported() -> Bool
  init()
  convenience init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
}
