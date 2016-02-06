
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startTunnel(options options: [String : Object]? = [:], completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func stopTunnel(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelTunnelWithError(error: Error?)
  @available(iOS 9.0, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnelTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnelTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
