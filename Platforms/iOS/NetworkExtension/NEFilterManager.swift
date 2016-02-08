
@available(iOS 8.0, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
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
  func loadFromPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  func removeFromPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  func saveToPreferences(completionHandler completionHandler: (Error?) -> Void)
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS 9.0, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(iOS 8.0, *)
  var isEnabled: Bool
  init()
}
