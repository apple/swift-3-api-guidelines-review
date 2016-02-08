
@available(iOS 8.0, *)
enum LAError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case authenticationFailed
  case userCancel
  case userFallback
  case systemCancel
  case passcodeNotSet
  case touchIDNotAvailable
  case touchIDNotEnrolled
  @available(iOS 9.0, *)
  case touchIDLockout
  @available(iOS 9.0, *)
  case appCancel
  @available(iOS 9.0, *)
  case invalidContext
}

extension LAError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(iOS 8.3, *)
let LAErrorDomain: String
