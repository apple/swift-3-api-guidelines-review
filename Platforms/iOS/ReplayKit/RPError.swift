
let RPRecordingErrorDomain: String
@available(iOS 9.0, *)
enum RPRecordingErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case UserDeclined
  case Disabled
  case FailedToStart
  case Failed
  case InsufficientStorage
  case Interrupted
  case ContentResize
}
