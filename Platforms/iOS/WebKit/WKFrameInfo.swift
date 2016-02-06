
@available(iOS 8.0, *)
class WKFrameInfo : Object, Copying {
  var isMainFrame: Bool { get }
  @NSCopying var request: URLRequest { get }
  @available(iOS 9.0, *)
  var securityOrigin: WKSecurityOrigin { get }
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
