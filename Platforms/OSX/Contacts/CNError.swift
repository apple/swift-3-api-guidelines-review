
@available(OSX 10.11, *)
let CNErrorDomain: String
@available(OSX 10.11, *)
enum CNErrorCode : Int {
  case CommunicationError
  case DataAccessError
  case AuthorizationDenied
  case RecordDoesNotExist
  case InsertedRecordAlreadyExists
  case ContainmentCycle
  case ContainmentScope
  case ParentRecordDoesNotExist
  case ValidationMultipleErrors
  case ValidationTypeMismatch
  case ValidationConfigurationError
  case PredicateInvalid
  case PolicyViolation
}

@available(OSX 10.11, iOS 9.0, *)
extension CNErrorCode : _BridgedNSError {
}
@available(OSX 10.11, *)
let CNErrorUserInfoAffectedRecordsKey: String
@available(OSX 10.11, *)
let CNErrorUserInfoAffectedRecordIdentifiersKey: String
@available(OSX 10.11, *)
let CNErrorUserInfoValidationErrorsKey: String
@available(OSX 10.11, *)
let CNErrorUserInfoKeyPathsKey: String
