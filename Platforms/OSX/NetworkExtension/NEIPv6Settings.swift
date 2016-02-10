
@available(OSX 10.11, *)
class NEIPv6Settings : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(addresses: [String], networkPrefixLengths: [Number])
  @available(OSX 10.11, *)
  var addresses: [String] { get }
  @available(OSX 10.11, *)
  var networkPrefixLengths: [Number] { get }
  @available(OSX 10.11, *)
  var includedRoutes: [NEIPv6Route]?
  @available(OSX 10.11, *)
  var excludedRoutes: [NEIPv6Route]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class NEIPv6Route : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(destinationAddress address: String, networkPrefixLength: Number)
  @available(OSX 10.11, *)
  var destinationAddress: String { get }
  @available(OSX 10.11, *)
  var destinationNetworkPrefixLength: Number { get }
  @available(OSX 10.11, *)
  var gatewayAddress: String?
  @available(OSX 10.11, *)
  class func defaultRoute() -> NEIPv6Route
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
