
@available(OSX 10.11, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(OSX 10.11, *)
  func readDataWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func writeData(data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  var remoteEndpoint: NWEndpoint { get }
  init()
}
