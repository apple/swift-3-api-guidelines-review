
@available(iOS 8.2, *)
let WatchKitErrorDomain: String
@available(iOS 8.2, *)
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
