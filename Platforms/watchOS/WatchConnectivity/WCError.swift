
@available(watchOS 2.0, *)
let WCErrorDomain: String
@available(watchOS 2.0, *)
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
