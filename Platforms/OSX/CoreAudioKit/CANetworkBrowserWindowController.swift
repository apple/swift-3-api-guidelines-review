
class CANetworkBrowserWindowController : NSWindowController {
  class func isAVBSupported() -> Bool
  init()
  convenience init(window window: NSWindow?)
  init?(coder coder: NSCoder)
  convenience init(windowNibName windowNibName: String)
  convenience init(windowNibName windowNibName: String, owner owner: AnyObject)
  convenience init(windowNibPath windowNibPath: String, owner owner: AnyObject)
}
