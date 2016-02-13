
@available(OSX 10.11, *)
class NEIPv4Settings : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(addresses: [String], subnetMasks: [String])
  @available(OSX 10.11, *)
  var addresses: [String] { get }
  @available(OSX 10.11, *)
  var subnetMasks: [String] { get }
  @available(OSX 10.11, *)
  var includedRoutes: [NEIPv4Route]?
  @available(OSX 10.11, *)
  var excludedRoutes: [NEIPv4Route]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class NEIPv4Route : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(destinationAddress address: String, subnetMask: String)
  @available(OSX 10.11, *)
  var destinationAddress: String { get }
  @available(OSX 10.11, *)
  var destinationSubnetMask: String { get }
  @available(OSX 10.11, *)
  var gatewayAddress: String?
  @available(OSX 10.11, *)
  class func defaultRoute() -> NEIPv4Route
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
}
