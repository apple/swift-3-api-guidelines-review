
@available(iOS 9.0, *)
let WCErrorDomain: String
@available(iOS 9.0, *)
enum WCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GenericError
  case SessionNotSupported
  case SessionMissingDelegate
  case SessionNotActivated
  case DeviceNotPaired
  case WatchAppNotInstalled
  case NotReachable
  case InvalidParameter
  case PayloadTooLarge
  case PayloadUnsupportedTypes
  case MessageReplyFailed
  case MessageReplyTimedOut
  case FileAccessDenied
  case DeliveryFailed
  case InsufficientSpace
}

@available(iOS 9.0, *)
extension WCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
