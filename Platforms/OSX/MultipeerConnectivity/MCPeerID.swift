
@available(OSX 10.10, *)
class MCPeerID : NSObject, NSCopying, NSSecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
