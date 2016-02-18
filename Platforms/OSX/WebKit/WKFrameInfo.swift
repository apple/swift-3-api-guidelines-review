
@available(OSX 10.10, *)
class WKFrameInfo : Object, Copying {
  var isMainFrame: Bool { get }
  @NSCopying var request: URLRequest { get }
  @available(OSX 10.11, *)
  var securityOrigin: WKSecurityOrigin { get }
  init()
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
}
