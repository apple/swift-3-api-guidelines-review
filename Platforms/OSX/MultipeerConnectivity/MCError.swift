
let MCErrorDomain: String
@available(OSX 10.10, *)
enum MCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case NotConnected
  case InvalidParameter
  case Unsupported
  case TimedOut
  case Cancelled
  case Unavailable
}

@available(OSX 10.10, iOS 7.0, *)
extension MCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
