
@available(OSX 10.11, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(OSX 10.11, *)
  func readDataWithCompletionHandler(_ completionHandler: (NSData?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func writeData(_ data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  var remoteEndpoint: NWEndpoint { get }
}
