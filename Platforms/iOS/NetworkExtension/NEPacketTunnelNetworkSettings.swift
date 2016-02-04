
@available(iOS 9.0, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(iOS 9.0, *)
  @NSCopying var IPv4Settings: NEIPv4Settings?
  @available(iOS 9.0, *)
  @NSCopying var IPv6Settings: NEIPv6Settings?
  @available(iOS 9.0, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?
  @available(iOS 9.0, *)
  @NSCopying var MTU: NSNumber?
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: NSCoder)
}
