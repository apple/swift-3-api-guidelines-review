
@available(iOS 8.0, *)
class WKNavigationResponse : NSObject {
  var forMainFrame: Bool { get }
  @NSCopying var response: NSURLResponse { get }
  var canShowMIMEType: Bool { get }
  init()
}
