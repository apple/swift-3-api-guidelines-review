
@available(iOS 8.0, *)
enum LAError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AuthenticationFailed
  case UserCancel
  case UserFallback
  case SystemCancel
  case PasscodeNotSet
  case TouchIDNotAvailable
  case TouchIDNotEnrolled
  @available(iOS 9.0, *)
  case TouchIDLockout
  @available(iOS 9.0, *)
  case AppCancel
  @available(iOS 9.0, *)
  case InvalidContext
}

extension LAError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(iOS 8.3, *)
let LAErrorDomain: String
