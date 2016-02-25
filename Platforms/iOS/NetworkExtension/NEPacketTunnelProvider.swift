
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startTunnelWithOptions(_ options: [String : NSObject]?, completionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopTunnelWithReason(_ reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelTunnelWithError(_ error: NSError?)
  @available(iOS 9.0, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnelToEndpoint(_ remoteEndpoint: NWEndpoint, enableTLS enableTLS: Bool, TLSParameters TLSParameters: NWTLSParameters?, delegate delegate: AnyObject?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnelToEndpoint(_ remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
}
