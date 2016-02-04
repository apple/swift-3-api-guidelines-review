
@available(OSX 10.11, *)
enum NWUDPSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Waiting
  case Preparing
  case Ready
  case Failed
  case Cancelled
}
@available(OSX 10.11, *)
class NWUDPSession : NSObject {
  @available(OSX 10.11, *)
  init(upgradeForSession session: NWUDPSession)
  @available(OSX 10.11, *)
  var state: NWUDPSessionState { get }
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(OSX 10.11, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(OSX 10.11, *)
  var viable: Bool { get }
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }
  @available(OSX 10.11, *)
  var currentPath: NWPath? { get }
  @available(OSX 10.11, *)
  func tryNextResolvedEndpoint()
  @available(OSX 10.11, *)
  var maximumDatagramLength: Int { get }
  @available(OSX 10.11, *)
  func setReadHandler(handler: ([NSData]?, NSError?) -> Void, maxDatagrams: Int)
  @available(OSX 10.11, *)
  func writeMultipleDatagrams(datagramArray: [NSData], completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func writeDatagram(datagram: NSData, completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func cancel()
  init()
}
