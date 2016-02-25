
@available(iOS 8.2, *)
let WatchKitErrorDomain: String
@available(iOS 8.2, *)
enum WatchKitErrorCode : Int {
  case unknownError
  case applicationDelegateWatchKitRequestReplyNotCalledError
  case invalidArgumentError
  case mediaPlayerError
  case downloadError
  case recordingFailedError
}

extension WatchKitErrorCode : _BridgedNSError {
}
