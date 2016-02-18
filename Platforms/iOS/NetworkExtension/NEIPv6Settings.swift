
@available(iOS 9.0, *)
class NEIPv6Settings : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(addresses: [String], networkPrefixLengths: [Number])
  @available(iOS 9.0, *)
  var addresses: [String] { get }
  @available(iOS 9.0, *)
  var networkPrefixLengths: [Number] { get }
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv6Route]?
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv6Route]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEIPv6Route : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(destinationAddress address: String, networkPrefixLength: Number)
  @available(iOS 9.0, *)
  var destinationAddress: String { get }
  @available(iOS 9.0, *)
  var destinationNetworkPrefixLength: Number { get }
  @available(iOS 9.0, *)
  var gatewayAddress: String?
  @available(iOS 9.0, *)
  class func defaultRoute() -> NEIPv6Route
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
