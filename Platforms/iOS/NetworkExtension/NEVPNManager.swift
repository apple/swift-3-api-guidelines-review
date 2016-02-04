
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
let NEVPNErrorDomain: String
@available(iOS 8.0, *)
let NEVPNConfigurationChangeNotification: String
@available(iOS 8.0, *)
class NEVPNManager : NSObject {
  @available(iOS 8.0, *)
  class func sharedManager() -> NEVPNManager
  @available(iOS 8.0, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 8.0, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(iOS 8.0, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(iOS 8.0, *)
  var onDemandEnabled: Bool
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use protocolConfiguration instead")
  var `protocol`: NEVPNProtocol?
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol?
  @available(iOS 8.0, *)
  var connection: NEVPNConnection { get }
  @available(iOS 8.0, *)
  var enabled: Bool
  init()
}
