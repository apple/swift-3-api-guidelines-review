
@available(OSX 10.11, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(OSX 10.11, *)
  @NSCopying var iPv4Settings: NEIPv4Settings?
  @available(OSX 10.11, *)
  @NSCopying var iPv6Settings: NEIPv6Settings?
  @available(OSX 10.11, *)
  @NSCopying var tunnelOverheadBytes: Number?
  @available(OSX 10.11, *)
  @NSCopying var mtu: Number?
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: Coder)
}
