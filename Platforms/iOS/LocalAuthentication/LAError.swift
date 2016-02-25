
@available(iOS 8.0, *)
enum LAError : Int {
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
}
@available(iOS 8.3, *)
let LAErrorDomain: String
