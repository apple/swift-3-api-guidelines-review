
@available(OSX 10.11, *)
enum NWUDPSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case waiting
  case preparing
  case ready
  case failed
  case cancelled
}
@available(OSX 10.11, *)
class NWUDPSession : Object {
  @available(OSX 10.11, *)
  init(upgradeFor session: NWUDPSession)
  @available(OSX 10.11, *)
  var state: NWUDPSessionState { get }
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(OSX 10.11, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var isViable: Bool { get }
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }
  @available(OSX 10.11, *)
  var currentPath: NWPath? { get }
  @available(OSX 10.11, *)
  func tryNextResolvedEndpoint()
  @available(OSX 10.11, *)
  var maximumDatagramLength: Int { get }
  @available(OSX 10.11, *)
  func setReadHandler(handler: ([Data]?, Error?) -> Void, maxDatagrams: Int)
  @available(OSX 10.11, *)
  func writeMultipleDatagrams(datagramArray: [Data], completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  func writeDatagram(datagram: Data, completionHandler: (Error?) -> Void)
  @available(OSX 10.11, *)
  func cancel()
  init()
}
