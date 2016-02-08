
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NWUDPSession : Object {
  @available(iOS 9.0, *)
  init(upgradeFor session: NWUDPSession)
  @available(iOS 9.0, *)
  var state: NWUDPSessionState { get }
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var isViable: Bool { get }
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }
  @available(iOS 9.0, *)
  var currentPath: NWPath? { get }
  @available(iOS 9.0, *)
  func tryNextResolvedEndpoint()
  @available(iOS 9.0, *)
  var maximumDatagramLength: Int { get }
  @available(iOS 9.0, *)
  func setReadHandler(handler: ([Data]?, Error?) -> Void, maxDatagrams: Int)
  @available(iOS 9.0, *)
  func writeMultipleDatagrams(datagramArray: [Data], completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagram(datagram: Data, completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func cancel()
  init()
}
