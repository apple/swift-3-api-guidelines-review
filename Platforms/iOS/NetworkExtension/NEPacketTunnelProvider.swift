
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startTunnelWithOptions(options: [String : NSObject]?, completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopTunnelWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelTunnelWithError(error: NSError?)
  @available(iOS 9.0, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, enableTLS: Bool, TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnelToEndpoint(remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}
