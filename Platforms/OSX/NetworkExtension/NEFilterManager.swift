
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
class NEFilterManager : Object {
  @available(OSX 10.10, *)
  class func shared() -> NEFilterManager
  @available(OSX 10.10, *)
  func loadFromPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(OSX 10.10, *)
  func removeFromPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(OSX 10.10, *)
  func saveToPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(OSX 10.10, *)
  var localizedDescription: String?
  @available(OSX 10.11, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(OSX 10.10, *)
  var isEnabled: Bool
  init()
}
