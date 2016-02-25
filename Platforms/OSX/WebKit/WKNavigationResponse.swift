
@available(OSX 10.10, *)
class WKNavigationResponse : NSObject {
  var forMainFrame: Bool { get }
  @NSCopying var response: NSURLResponse { get }
  var canShowMIMEType: Bool { get }
}
