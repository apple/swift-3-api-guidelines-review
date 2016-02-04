
let GKErrorDomain: String
enum GKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Cancelled
  case CommunicationsFailure
  case UserDenied
  case InvalidCredentials
  case NotAuthenticated
  case AuthenticationInProgress
  case InvalidPlayer
  case ScoreNotSet
  case ParentalControlsBlocked
  case PlayerStatusExceedsMaximumLength
  case PlayerStatusInvalid
  case MatchRequestInvalid
  case Underage
  case GameUnrecognized
  case NotSupported
  case InvalidParameter
  case UnexpectedConnection
  case ChallengeInvalid
  case TurnBasedMatchDataTooLarge
  case TurnBasedTooManySessions
  case TurnBasedInvalidParticipant
  case TurnBasedInvalidTurn
  case TurnBasedInvalidState
  case InvitationsDisabled
  case PlayerPhotoFailure
  case UbiquityContainerUnavailable
}

extension GKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
