
@available(iOS 9.0, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readDataWithCompletionHandler(_ completionHandler: (NSData?, NSError?) -> Void)
  @available(iOS 9.0, *)
  func writeData(_ data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint { get }
}
