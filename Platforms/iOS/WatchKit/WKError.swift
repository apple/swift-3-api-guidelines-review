
@available(iOS 8.2, *)
let WatchKitErrorDomain: String
@available(iOS 8.2, *)
enum WatchKitErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case applicationDelegateWatchKitRequestReplyNotCalledError
  case invalidArgumentError
  case mediaPlayerError
  case downloadError
  case recordingFailedError
}

extension WatchKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
