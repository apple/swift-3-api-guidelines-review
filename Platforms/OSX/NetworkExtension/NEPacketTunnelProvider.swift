
@available(OSX 10.11, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startTunnelWithOptions(options: [String : NSObject]?, completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func stopTunnelWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelTunnelWithError(error: NSError?)
  @available(OSX 10.11, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(OSX 10.11, *)
  func createTCPConnectionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, enableTLS: Bool, TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(OSX 10.11, *)
  func createUDPSessionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
