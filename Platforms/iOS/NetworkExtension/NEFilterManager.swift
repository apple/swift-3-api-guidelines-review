
@available(iOS 8.0, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
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
class NEFilterManager : Object {
  @available(iOS 8.0, *)
  class func shared() -> NEFilterManager
  @available(iOS 8.0, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS 9.0, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(iOS 8.0, *)
  var isEnabled: Bool
  init()
}
