
@available(iOS 9.0, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startProxyWithOptions(options: [String : AnyObject]?, completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopProxyWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func cancelProxyWithError(error: NSError?)
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}
