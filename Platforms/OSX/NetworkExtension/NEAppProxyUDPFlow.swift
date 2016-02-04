
@available(OSX 10.11, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(OSX 10.11, *)
  func readDatagramsWithCompletionHandler(completionHandler: ([NSData]?, [NWEndpoint]?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func writeDatagrams(datagrams: [NSData], sentByEndpoints remoteEndpoints: [NWEndpoint], completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  var localEndpoint: NWEndpoint? { get }
  init()
}
