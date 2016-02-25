
@available(iOS 9.0, *)
enum NWTCPConnectionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Connecting
  case Waiting
  case Connected
  case Disconnected
  case Cancelled
}
@available(iOS 9.0, *)
class NWTCPConnection : NSObject {
  @available(iOS 9.0, *)
  init(upgradeForConnection connection: NWTCPConnection)
  @available(iOS 9.0, *)
  var state: NWTCPConnectionState { get }
  @available(iOS 9.0, *)
  var viable: Bool { get }
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
  var txtRecord: NSData? { get }
  @available(iOS 9.0, *)
  var error: NSError? { get }
  @available(iOS 9.0, *)
  func cancel()
  @available(iOS 9.0, *)
  func readLength(_ length: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  @available(iOS 9.0, *)
  func readMinimumLength(_ minimum: Int, maximumLength maximum: Int, completionHandler completion: (NSData?, NSError?) -> Void)
  @available(iOS 9.0, *)
  func write(_ data: NSData, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func writeClose()
}
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func shouldProvideIdentityForConnection(_ connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func provideIdentityForConnection(_ connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func shouldEvaluateTrustForConnection(_ connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func evaluateTrustForConnection(_ connection: NWTCPConnection, peerCertificateChain peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
