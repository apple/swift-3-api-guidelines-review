
@available(OSX 10.11, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(OSX 10.11, *)
  func startTunnel(options options: [String : AnyObject]? = [:]) throws
  @available(OSX 10.11, *)
  func stopTunnel()
  @available(OSX 10.11, *)
  func sendProviderMessage(messageData: Data, responseHandler: ((Data?) -> Void)? = nil) throws
  init()
}
