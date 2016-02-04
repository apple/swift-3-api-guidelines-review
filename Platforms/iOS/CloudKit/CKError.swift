
@available(iOS 8.0, *)
let CKErrorDomain: String
@available(iOS 8.0, *)
let CKPartialErrorsByItemIDKey: String
@available(iOS 8.0, *)
let CKRecordChangedErrorAncestorRecordKey: String
@available(iOS 8.0, *)
let CKRecordChangedErrorServerRecordKey: String
@available(iOS 8.0, *)
let CKRecordChangedErrorClientRecordKey: String
@available(iOS 8.0, *)
let CKErrorRetryAfterKey: String
@available(iOS 8.0, *)
enum CKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InternalError
  case PartialFailure
  case NetworkUnavailable
  case NetworkFailure
  case BadContainer
  case ServiceUnavailable
  case RequestRateLimited
  case MissingEntitlement
  case NotAuthenticated
  case PermissionFailure
  case UnknownItem
  case InvalidArguments
  case ResultsTruncated
  case ServerRecordChanged
  case ServerRejectedRequest
  case AssetFileNotFound
  case AssetFileModified
  case IncompatibleVersion
  case ConstraintViolation
  case OperationCancelled
  case ChangeTokenExpired
  case BatchRequestFailed
  case ZoneBusy
  case BadDatabase
  case QuotaExceeded
  case ZoneNotFound
  case LimitExceeded
  case UserDeletedZone
}

@available(OSX 10.10, iOS 8.0, *)
extension CKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
