
@available(OSX 10.11, *)
class NETunnelNetworkSettings : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)
  @available(OSX 10.11, *)
  var tunnelRemoteAddress: String { get }
  @available(OSX 10.11, *)
  @NSCopying var dnsSettings: NEDNSSettings?
  @available(OSX 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
}
