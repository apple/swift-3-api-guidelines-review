
extension NSObject {
  class func webPlugInContainerLoadRequest(request: NSURLRequest!, inFrame target: String!)
  func webPlugInContainerLoadRequest(request: NSURLRequest!, inFrame target: String!)
  class func webPlugInContainerShowStatus(message: String!)
  func webPlugInContainerShowStatus(message: String!)
  var webPlugInContainerSelectionColor: NSColor! { get }
  var webFrame: WebFrame! { get }
  class func webPlugInContainerSelectionColor() -> NSColor!
  class func webFrame() -> WebFrame!
}
