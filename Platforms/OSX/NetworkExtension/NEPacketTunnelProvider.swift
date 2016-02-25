
@available(OSX 10.11, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startTunnelWithOptions(_ options: [String : NSObject]?, completionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func stopTunnelWithReason(_ reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelTunnelWithError(_ error: NSError?)
  @available(OSX 10.11, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(OSX 10.11, *)
  func createTCPConnectionThroughTunnelToEndpoint(_ remoteEndpoint: NWEndpoint, enableTLS enableTLS: Bool, TLSParameters TLSParameters: NWTLSParameters?, delegate delegate: AnyObject?) -> NWTCPConnection
  @available(OSX 10.11, *)
  func createUDPSessionThroughTunnelToEndpoint(_ remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
}
