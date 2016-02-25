
@available(OSX 10.10, *)
enum LAError : Int {
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
}
@available(OSX 10.10, *)
let LAErrorDomain: String
