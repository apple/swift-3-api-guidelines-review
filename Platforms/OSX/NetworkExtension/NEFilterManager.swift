
@available(OSX 10.10, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConfigurationInvalid
  case ConfigurationDisabled
  case ConfigurationStale
  case ConfigurationCannotBeRemoved
}
@available(OSX 10.10, *)
let NEFilterErrorDomain: String
@available(OSX 10.10, *)
let NEFilterConfigurationDidChangeNotification: String
@available(OSX 10.10, *)
class NEFilterManager : NSObject {
  @available(OSX 10.10, *)
  class func sharedManager() -> NEFilterManager
  @available(OSX 10.10, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(OSX 10.10, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(OSX 10.10, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(OSX 10.10, *)
  var localizedDescription: String?
  @available(OSX 10.11, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(OSX 10.10, *)
  var enabled: Bool
  init()
}
