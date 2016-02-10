
@available(iOS 9.0, *)
class NETunnelNetworkSettings : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)
  @available(iOS 9.0, *)
  var tunnelRemoteAddress: String { get }
  @available(iOS 9.0, *)
  @NSCopying var dnsSettings: NEDNSSettings?
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
