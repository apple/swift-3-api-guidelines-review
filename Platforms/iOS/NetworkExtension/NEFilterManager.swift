
@available(iOS 8.0, *)
enum NEFilterManagerError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ConfigurationInvalid
  case ConfigurationDisabled
  case ConfigurationStale
  case ConfigurationCannotBeRemoved
}
@available(iOS 8.0, *)
let NEFilterErrorDomain: String
@available(iOS 8.0, *)
let NEFilterConfigurationDidChangeNotification: String
@available(iOS 8.0, *)
class NEFilterManager : NSObject {
  @available(iOS 8.0, *)
  class func sharedManager() -> NEFilterManager
  @available(iOS 8.0, *)
  func loadFromPreferencesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 8.0, *)
  func removeFromPreferencesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 8.0, *)
  func saveToPreferencesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS 9.0, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(iOS 8.0, *)
  var enabled: Bool
}
