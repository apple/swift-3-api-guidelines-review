
@available(watchOS 2.0, *)
let HMErrorDomain: String
@available(watchOS 20000, *)
enum HMErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlreadyExists
  case NotFound
  case InvalidParameter
  case AccessoryNotReachable
  case ReadOnlyCharacteristic
  case WriteOnlyCharacteristic
  case NotificationNotSupported
  case OperationTimedOut
  case AccessoryPoweredOff
  case AccessDenied
  case ObjectAssociatedToAnotherHome
  case ObjectNotAssociatedToAnyHome
  case ObjectAlreadyAssociatedToHome
  case AccessoryIsBusy
  case OperationInProgress
  case AccessoryOutOfResources
  case InsufficientPrivileges
  case AccessoryPairingFailed
  case InvalidDataFormatSpecified
  case NilParameter
  case UnconfiguredParameter
  case InvalidClass
  case OperationCancelled
  case RoomForHomeCannotBeInZone
  case NoActionsInActionSet
  case NoRegisteredActionSets
  case MissingParameter
  case FireDateInPast
  case RoomForHomeCannotBeUpdated
  case ActionInAnotherActionSet
  case ObjectWithSimilarNameExistsInHome
  case HomeWithSimilarNameExists
  case RenameWithSimilarName
  case CannotRemoveNonBridgeAccessory
  case NameContainsProhibitedCharacters
  case NameDoesNotStartWithValidCharacters
  case UserIDNotEmailAddress
  case UserDeclinedAddingUser
  case UserDeclinedRemovingUser
  case UserDeclinedInvite
  case UserManagementFailed
  case RecurrenceTooSmall
  case InvalidValueType
  case ValueLowerThanMinimum
  case ValueHigherThanMaximum
  case StringLongerThanMaximum
  case HomeAccessNotAuthorized
  case OperationNotSupported
  case MaximumObjectLimitReached
  case AccessorySentInvalidResponse
  case StringShorterThanMinimum
  case GenericError
  case SecurityFailure
  case CommunicationFailure
  case MessageAuthenticationFailed
  case InvalidMessageSize
  case AccessoryDiscoveryFailed
  case ClientRequestError
  case AccessoryResponseError
  case NameDoesNotEndWithValidCharacters
  case AccessoryIsBlocked
  case InvalidAssociatedServiceType
  case ActionSetExecutionFailed
  case ActionSetExecutionPartialSuccess
  case ActionSetExecutionInProgress
  case AccessoryOutOfCompliance
  case DataResetFailure
  case NotificationAlreadyEnabled
  case RecurrenceMustBeOnSpecifiedBoundaries
  case DateMustBeOnSpecifiedBoundaries
  case CannotActivateTriggerTooFarInFuture
  case RecurrenceTooLarge
  case ReadWritePartialSuccess
  case ReadWriteFailure
  case NotSignedIntoiCloud
  case KeychainSyncNotEnabled
  case CloudDataSyncInProgress
  case NetworkUnavailable
  case AddAccessoryFailed
  case MissingEntitlement
  case CannotUnblockNonBridgeAccessory
  case DeviceLocked
  @available(watchOS 2.0, *)
  case CannotRemoveBuiltinActionSet
  @available(watchOS 2.0, *)
  case LocationForHomeDisabled
  @available(watchOS 2.0, *)
  case NotAuthorizedForLocationServices
}
