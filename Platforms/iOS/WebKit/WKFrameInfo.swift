
@available(iOS 8.0, *)
class WKFrameInfo : NSObject, NSCopying {
  var mainFrame: Bool { get }
  @NSCopying var request: NSURLRequest { get }
  @available(iOS 9.0, *)
  var securityOrigin: WKSecurityOrigin { get }
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
