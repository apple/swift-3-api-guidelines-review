
@available(iOS 7.0, *)
class MCPeerID : NSObject, NSCopying, NSSecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
