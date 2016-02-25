
@available(OSX 10.11, *)
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(addresses addresses: [String], networkPrefixLengths networkPrefixLengths: [NSNumber])
  @available(OSX 10.11, *)
  var addresses: [String] { get }
  @available(OSX 10.11, *)
  var networkPrefixLengths: [NSNumber] { get }
  @available(OSX 10.11, *)
  var includedRoutes: [NEIPv6Route]?
  @available(OSX 10.11, *)
  var excludedRoutes: [NEIPv6Route]?
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(destinationAddress address: String, networkPrefixLength networkPrefixLength: NSNumber)
  @available(OSX 10.11, *)
  var destinationAddress: String { get }
  @available(OSX 10.11, *)
  var destinationNetworkPrefixLength: NSNumber { get }
  @available(OSX 10.11, *)
  var gatewayAddress: String?
  @available(OSX 10.11, *)
  class func defaultRoute() -> NEIPv6Route
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
