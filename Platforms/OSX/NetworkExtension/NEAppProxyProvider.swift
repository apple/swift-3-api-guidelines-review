
@available(OSX 10.11, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(OSX 10.11, *)
  func startProxyWithOptions(_ options: [String : AnyObject]?, completionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func stopProxyWithReason(_ reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func cancelProxyWithError(_ error: NSError?)
  @available(OSX 10.11, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
}
