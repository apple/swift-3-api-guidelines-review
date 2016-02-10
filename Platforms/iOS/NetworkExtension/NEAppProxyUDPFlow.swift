
@available(iOS 9.0, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readDatagrams(completionHandler completionHandler: ([Data]?, [NWEndpoint]?, Error?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagrams(datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint], completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint? { get }
  init()
}
