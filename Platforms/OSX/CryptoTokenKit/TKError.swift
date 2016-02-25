
let TKErrorDomain: String
enum TKErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotImplemented
  case CommunicationError
  case CorruptedData
  case CanceledByUser
  case AuthenticationFailed
  case ObjectNotFound
  case TokenNotFound
  case BadParameter
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeAuthenticationFailed")
  static var TKErrorAuthenticationFailed: TKErrorCode { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeObjectNotFound")
  static var TKErrorObjectNotFound: TKErrorCode { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeTokenNotFound")
  static var TKErrorTokenNotFound: TKErrorCode { get }
}
