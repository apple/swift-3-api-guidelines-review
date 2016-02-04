
@available(OSX 10.10, *)
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
  @available(OSX 10.11, *)
  case TouchIDLockout
  @available(OSX 10.11, *)
  case AppCancel
  @available(OSX 10.11, *)
  case InvalidContext
}

extension LAError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(OSX 10.10, *)
let LAErrorDomain: String
