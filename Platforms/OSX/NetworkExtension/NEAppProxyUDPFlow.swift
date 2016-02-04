
@available(OSX 10.11, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(OSX 10.11, *)
  func readDatagramsWithCompletionHandler(completionHandler: ([Data]?, [NWEndpoint]?, Error?) -> Void)
  @available(OSX 10.11, *)
  func writeDatagrams(datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint], completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  var localEndpoint: NWEndpoint? { get }
  init()
}
