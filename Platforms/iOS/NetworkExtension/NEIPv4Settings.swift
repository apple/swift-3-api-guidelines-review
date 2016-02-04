
@available(iOS 9.0, *)
class NEIPv4Settings : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(addresses: [String], subnetMasks: [String])
  @available(iOS 9.0, *)
  var addresses: [String] { get }
  @available(iOS 9.0, *)
  var subnetMasks: [String] { get }
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv4Route]?
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv4Route]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEIPv4Route : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(destinationAddress address: String, subnetMask: String)
  @available(iOS 9.0, *)
  var destinationAddress: String { get }
  @available(iOS 9.0, *)
  var destinationSubnetMask: String { get }
  @available(iOS 9.0, *)
  var gatewayAddress: String?
  @available(iOS 9.0, *)
  class func defaultRoute() -> NEIPv4Route
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
