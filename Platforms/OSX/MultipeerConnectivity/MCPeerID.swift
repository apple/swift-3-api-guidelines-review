
@available(OSX 10.10, *)
class MCPeerID : Object, Copying, SecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  @available(OSX 10.10, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
