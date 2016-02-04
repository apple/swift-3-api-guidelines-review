
@available(iOS 9.0, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(iOS 9.0, *)
  @NSCopying var iPv4Settings: NEIPv4Settings?
  @available(iOS 9.0, *)
  @NSCopying var iPv6Settings: NEIPv6Settings?
  @available(iOS 9.0, *)
  @NSCopying var tunnelOverheadBytes: Number?
  @available(iOS 9.0, *)
  @NSCopying var mtu: Number?
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: Coder)
}
