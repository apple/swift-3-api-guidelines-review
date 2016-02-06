
@available(iOS 9.0, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readData(completionHandler completionHandler: (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func write(data: Data, withCompletionHandler completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint { get }
  init()
}
