
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startTunnel(options options: [String : Object]? = [:], completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func stopTunnel(withReason reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelTunnelWithError(error: Error?)
  @available(iOS 9.0, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnel(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnel(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
