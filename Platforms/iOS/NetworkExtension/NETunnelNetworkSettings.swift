
@available(iOS 9.0, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)
  @available(iOS 9.0, *)
  var tunnelRemoteAddress: String { get }
  @available(iOS 9.0, *)
  @NSCopying var DNSSettings: NEDNSSettings?
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
