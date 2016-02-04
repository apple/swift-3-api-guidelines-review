
@available(OSX 10.11, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(OSX 10.11, *)
  func startTunnelWithOptions(options: [String : AnyObject]?) throws
  @available(OSX 10.11, *)
  func stopTunnel()
  @available(OSX 10.11, *)
  func sendProviderMessage(messageData: NSData, responseHandler: ((NSData?) -> Void)?) throws
  init()
}
