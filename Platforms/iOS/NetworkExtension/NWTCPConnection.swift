
@available(iOS 9.0, *)
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Connecting
  case Waiting
  case Connected
  case Disconnected
  case Cancelled
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
  optional func shouldProvideIdentityFor(connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func provideIdentityFor(connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func shouldEvaluateTrustFor(connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func evaluateTrustFor(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
