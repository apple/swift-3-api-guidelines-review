
@available(OSX 10.11, *)
enum NEProviderStopReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case UserInitiated
  case ProviderFailed
  case NoNetworkAvailable
  case UnrecoverableNetworkChange
  case ProviderDisabled
  case AuthenticationCanceled
  case ConfigurationFailed
  case IdleTimeout
  case ConfigurationDisabled
  case ConfigurationRemoved
  case Superceded
  case UserLogout
  case UserSwitch
  case ConnectionFailed
}
@available(OSX 10.11, *)
class NEProvider : NSObject {
  @available(OSX 10.11, *)
  func sleepWithCompletionHandler(completionHandler: () -> Void)
  @available(OSX 10.11, *)
  func wake()
  @available(OSX 10.11, *)
  func createTCPConnectionToEndpoint(remoteEndpoint: NWEndpoint, enableTLS: Bool, TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection
  @available(OSX 10.11, *)
  func createUDPSessionToEndpoint(remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  @available(OSX 10.11, *)
  var defaultPath: NWPath? { get }
  init()
}
