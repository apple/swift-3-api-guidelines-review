
@available(OSX 10.11, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startProxy(options options: [String : AnyObject]? = [:], completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  func stopProxy(withReason reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelProxyWithError(error: Error?)
  @available(OSX 10.11, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
