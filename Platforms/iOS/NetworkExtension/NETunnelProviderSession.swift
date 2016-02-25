
@available(iOS 9.0, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(iOS 9.0, *)
  func startTunnelWithOptions(_ options: [String : AnyObject]?) throws
  @available(iOS 9.0, *)
  func stopTunnel()
  @available(iOS 9.0, *)
  func sendProviderMessage(_ messageData: NSData, responseHandler responseHandler: ((NSData?) -> Void)?) throws
}
