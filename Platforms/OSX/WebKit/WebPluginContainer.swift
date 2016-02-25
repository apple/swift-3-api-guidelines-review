
extension NSObject {
  class func webPlugInContainerLoadRequest(_ request: NSURLRequest!, inFrame target: String!)
  func webPlugInContainerLoadRequest(_ request: NSURLRequest!, inFrame target: String!)
  class func webPlugInContainerShowStatus(_ message: String!)
  func webPlugInContainerShowStatus(_ message: String!)
  var webPlugInContainerSelectionColor: NSColor! { get }
  var webFrame: WebFrame! { get }
  class func webPlugInContainerSelectionColor() -> NSColor!
  class func webFrame() -> WebFrame!
}
