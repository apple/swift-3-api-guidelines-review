
@available(tvOS 9.0, *)
let TVMLKitErrorDomain: String
@available(tvOS 9.0, *)
enum TVMLKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case InternetUnavailable
  case FailedToLaunch
  case Last
}
