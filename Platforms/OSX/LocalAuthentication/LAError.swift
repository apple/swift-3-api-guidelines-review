
@available(OSX 10.10, *)
enum LAError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case authenticationFailed
  case userCancel
  case userFallback
  case systemCancel
  case passcodeNotSet
  case touchIDNotAvailable
  case touchIDNotEnrolled
  @available(OSX 10.11, *)
  case touchIDLockout
  @available(OSX 10.11, *)
  case appCancel
  @available(OSX 10.11, *)
  case invalidContext
}

extension LAError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(OSX 10.10, *)
let LAErrorDomain: String
