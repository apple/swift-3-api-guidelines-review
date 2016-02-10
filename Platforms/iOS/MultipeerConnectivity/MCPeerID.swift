
@available(iOS 7.0, *)
class MCPeerID : Object, Copying, SecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  @available(iOS 7.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
