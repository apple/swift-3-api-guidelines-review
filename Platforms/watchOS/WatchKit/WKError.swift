
@available(watchOS 2.0, *)
let WatchKitErrorDomain: String
@available(watchOS 2.0, *)
enum WatchKitErrorCode : Int {
  case UnknownError
  case ApplicationDelegateWatchKitRequestReplyNotCalledError
  case InvalidArgumentError
  case MediaPlayerError
  case DownloadError
  case RecordingFailedError
}

extension WatchKitErrorCode : _BridgedNSError {
}
