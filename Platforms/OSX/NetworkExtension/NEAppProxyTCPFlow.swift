
@available(OSX 10.11, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(OSX 10.11, *)
  func readDataWithCompletionHandler(completionHandler: (Data?, Error?) -> Void)
  @available(OSX 10.11, *)
  func write(data: Data, withCompletionHandler completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  var remoteEndpoint: NWEndpoint { get }
  init()
}
