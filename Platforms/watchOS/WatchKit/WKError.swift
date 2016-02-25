
@available(watchOS 2.0, *)
let WatchKitErrorDomain: String
@available(watchOS 2.0, *)
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
