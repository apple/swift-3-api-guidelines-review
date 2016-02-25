
@available(iOS 7.0, *)
class MCPeerID : NSObject, NSCopying, NSSecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  @available(iOS 7.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
