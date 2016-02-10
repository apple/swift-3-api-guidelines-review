
@available(iOS 9.0, *)
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case connecting
  case waiting
  case connected
  case disconnected
  case cancelled
}
@available(iOS 9.0, *)
class NWTCPConnection : Object {
  @available(iOS 9.0, *)
  init(upgradeFor connection: NWTCPConnection)
  @available(iOS 9.0, *)
  var state: NWTCPConnectionState { get }
  @available(iOS 9.0, *)
  var isViable: Bool { get }
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var connectedPath: NWPath? { get }
  @available(iOS 9.0, *)
  var localAddress: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var remoteAddress: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var txtRecord: Data? { get }
  @available(iOS 9.0, *)
  var error: Error? { get }
  @available(iOS 9.0, *)
  func cancel()
  @available(iOS 9.0, *)
  func readLength(length: Int, completionHandler completion: (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func write(data: Data, completionHandler completion: (Error?) -> Void)
  @available(iOS 9.0, *)
  func writeClose()
  init()
}
protocol NWTCPConnectionAuthenticationDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  optional func shouldProvideIdentity(for connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func provideIdentity(for connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func shouldEvaluateTrust(for connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func evaluateTrust(for connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
