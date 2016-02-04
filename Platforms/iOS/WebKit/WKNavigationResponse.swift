
@available(iOS 8.0, *)
class WKNavigationResponse : Object {
  var isForMainFrame: Bool { get }
  @NSCopying var response: URLResponse { get }
  var canShowMIMEType: Bool { get }
  init()
}
