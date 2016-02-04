
@available(iOS 9.0, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readDatagramsWithCompletionHandler(completionHandler: ([NSData]?, [NWEndpoint]?, NSError?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagrams(datagrams: [NSData], sentByEndpoints remoteEndpoints: [NWEndpoint], completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint? { get }
  init()
}
