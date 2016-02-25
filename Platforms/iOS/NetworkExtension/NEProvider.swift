
@available(iOS 9.0, *)
enum NEProviderStopReason : Int {
  init?(rawValue rawValue: Int)
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
@available(iOS 9.0, *)
class NEProvider : NSObject {
  @available(iOS 9.0, *)
  func sleepWithCompletionHandler(_ completionHandler: () -> Void)
  @available(iOS 9.0, *)
  func wake()
  @available(iOS 9.0, *)
  func createTCPConnectionToEndpoint(_ remoteEndpoint: NWEndpoint, enableTLS enableTLS: Bool, TLSParameters TLSParameters: NWTLSParameters?, delegate delegate: AnyObject?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionToEndpoint(_ remoteEndpoint: NWEndpoint, fromEndpoint localEndpoint: NWHostEndpoint?) -> NWUDPSession
  @available(iOS 9.0, *)
  var defaultPath: NWPath? { get }
}
