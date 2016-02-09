
@available(iOS 9.0, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startProxy(options options: [String : AnyObject]? = [:], completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func stopProxy(withReason reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelProxyWithError(error: Error?)
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
