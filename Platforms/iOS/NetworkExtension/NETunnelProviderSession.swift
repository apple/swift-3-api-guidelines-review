
@available(iOS 9.0, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(iOS 9.0, *)
  func startTunnelWithOptions(options: [String : AnyObject]?) throws
  @available(iOS 9.0, *)
  func stopTunnel()
  @available(iOS 9.0, *)
  func sendProviderMessage(messageData: NSData, responseHandler: ((NSData?) -> Void)?) throws
  init()
}
