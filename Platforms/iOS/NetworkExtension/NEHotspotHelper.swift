
@available(iOS 9.0, *)
enum NEHotspotHelperCommandType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FilterScanList
  case Evaluate
  case Authenticate
  case PresentUI
  case Maintain
  case Logoff
}
@available(iOS 9.0, *)
enum NEHotspotHelperResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case Failure
  case UIRequired
  case CommandNotRecognized
  case AuthenticationRequired
  case UnsupportedNetwork
  case TemporaryFailure
}
@available(iOS 9.0, *)
enum NEHotspotHelperConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case High
}
@available(iOS 9.0, *)
class NEHotspotNetwork : NSObject {
  @available(iOS 9.0, *)
  var SSID: String { get }
  @available(iOS 9.0, *)
  var BSSID: String { get }
  @available(iOS 9.0, *)
  var signalStrength: Double { get }
  @available(iOS 9.0, *)
  var secure: Bool { get }
  @available(iOS 9.0, *)
  var autoJoined: Bool { get }
  @available(iOS 9.0, *)
  var justJoined: Bool { get }
  @available(iOS 9.0, *)
  var chosenHelper: Bool { get }
  @available(iOS 9.0, *)
  func setConfidence(confidence: NEHotspotHelperConfidence)
  @available(iOS 9.0, *)
  func setPassword(password: String)
  init()
}
@available(iOS 9.0, *)
class NEHotspotHelperCommand : NSObject {
  @available(iOS 9.0, *)
  var commandType: NEHotspotHelperCommandType { get }
  @available(iOS 9.0, *)
  var network: NEHotspotNetwork? { get }
  @available(iOS 9.0, *)
  var networkList: [NEHotspotNetwork]? { get }
  @available(iOS 9.0, *)
  func createResponse(result: NEHotspotHelperResult) -> NEHotspotHelperResponse
  @available(iOS 9.0, *)
  func createTCPConnection(endpoint: NWEndpoint) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSession(endpoint: NWEndpoint) -> NWUDPSession
  init()
}
@available(iOS 9.0, *)
class NEHotspotHelperResponse : NSObject {
  @available(iOS 9.0, *)
  func setNetwork(network: NEHotspotNetwork)
  @available(iOS 9.0, *)
  func setNetworkList(networkList: [NEHotspotNetwork])
  @available(iOS 9.0, *)
  func deliver()
  init()
}
@available(iOS 9.0, *)
typealias NEHotspotHelperHandler = (NEHotspotHelperCommand) -> Void
@available(iOS 9.0, *)
let kNEHotspotHelperOptionDisplayName: String
@available(iOS 9.0, *)
class NEHotspotHelper : NSObject {
  @available(iOS 9.0, *)
  class func registerWithOptions(options: [String : NSObject]?, queue: dispatch_queue_t, handler: NEHotspotHelperHandler) -> Bool
  @available(iOS 9.0, *)
  class func logoff(network: NEHotspotNetwork) -> Bool
  @available(iOS 9.0, *)
  class func supportedNetworkInterfaces() -> [AnyObject]
  init()
}
extension NSMutableURLRequest {
  @available(iOS 9.0, *)
  func bindToHotspotHelperCommand(command: NEHotspotHelperCommand)
}
