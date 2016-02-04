
@available(OSX 10.10, *)
enum NEVPNError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConfigurationInvalid
  case ConfigurationDisabled
  case ConnectionFailed
  case ConfigurationStale
  case ConfigurationReadWriteFailed
  case ConfigurationUnknown
}
@available(OSX 10.10, *)
let NEVPNErrorDomain: String
@available(OSX 10.10, *)
let NEVPNConfigurationChangeNotification: String
@available(OSX 10.10, *)
class NEVPNManager : NSObject {
  @available(OSX 10.10, *)
  class func sharedManager() -> NEVPNManager
  @available(OSX 10.10, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(OSX 10.10, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func setAuthorization(authorization: AuthorizationRef)
  @available(OSX 10.10, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(OSX 10.10, *)
  var onDemandEnabled: Bool
  @available(OSX 10.10, *)
  var localizedDescription: String?
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use protocolConfiguration instead")
  var `protocol`: NEVPNProtocol?
  @available(OSX 10.11, *)
  var protocolConfiguration: NEVPNProtocol?
  @available(OSX 10.10, *)
  var connection: NEVPNConnection { get }
  @available(OSX 10.10, *)
  var enabled: Bool
  init()
}
