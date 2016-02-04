
@available(iOS 7.0, *)
class MCPeerID : NSObject, NSCopying, NSSecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  @available(iOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
