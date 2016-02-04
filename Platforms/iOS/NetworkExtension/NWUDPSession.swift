
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NWUDPSession : NSObject {
  @available(iOS 9.0, *)
  init(upgradeForSession session: NWUDPSession)
  @available(iOS 9.0, *)
  var state: NWUDPSessionState { get }
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var viable: Bool { get }
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }
  @available(iOS 9.0, *)
  var currentPath: NWPath? { get }
  @available(iOS 9.0, *)
  func tryNextResolvedEndpoint()
  @available(iOS 9.0, *)
  var maximumDatagramLength: Int { get }
  @available(iOS 9.0, *)
  func setReadHandler(handler: ([NSData]?, NSError?) -> Void, maxDatagrams: Int)
  @available(iOS 9.0, *)
  func writeMultipleDatagrams(datagramArray: [NSData], completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagram(datagram: NSData, completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func cancel()
  init()
}
