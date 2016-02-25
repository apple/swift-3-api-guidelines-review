
@available(OSX 10.10, *)
class MCPeerID : NSObject, NSCopying, NSSecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
