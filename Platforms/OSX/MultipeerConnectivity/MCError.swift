
let MCErrorDomain: String
@available(OSX 10.10, *)
enum MCErrorCode : Int {
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
}
