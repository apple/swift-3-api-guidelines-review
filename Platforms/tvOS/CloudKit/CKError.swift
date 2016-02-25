
@available(tvOS 8.0, *)
let CKErrorDomain: String
@available(tvOS 8.0, *)
let CKPartialErrorsByItemIDKey: String
@available(tvOS 8.0, *)
let CKRecordChangedErrorAncestorRecordKey: String
@available(tvOS 8.0, *)
let CKRecordChangedErrorServerRecordKey: String
@available(tvOS 8.0, *)
let CKRecordChangedErrorClientRecordKey: String
@available(tvOS 8.0, *)
let CKErrorRetryAfterKey: String
@available(tvOS 8.0, *)
enum CKErrorCode : Int {
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
}
