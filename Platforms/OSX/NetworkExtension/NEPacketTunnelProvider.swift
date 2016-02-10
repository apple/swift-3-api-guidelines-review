
@available(OSX 10.11, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startTunnel(options options: [String : Object]? = [:], completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  func stopTunnel(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelTunnelWithError(error: Error?)
  @available(OSX 10.11, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(OSX 10.11, *)
  func createTCPConnectionThroughTunnel(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(OSX 10.11, *)
  func createUDPSessionThroughTunnel(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
