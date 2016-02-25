
@available(OSX 10.11, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)
  @available(OSX 10.11, *)
  var tunnelRemoteAddress: String { get }
  @available(OSX 10.11, *)
  @NSCopying var DNSSettings: NEDNSSettings?
  @available(OSX 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
