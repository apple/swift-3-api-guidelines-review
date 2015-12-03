
@available(tvOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init(identifier: String?)
  @available(tvOS 8.0, *)
  init(identifier: String?, player: GKPlayer)
  @available(tvOS 6.0, *)
  class func reportAchievements(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(tvOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  init()
  @available(tvOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
}
@available(tvOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptionsWithCompletionHandler(completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)?)
  var identifier: String? { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var hidden: Bool { get }
  @available(tvOS 6.0, *)
  var replayable: Bool { get }
  init()
  @available(tvOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
extension GKAchievementViewController {
  unowned(unsafe) var achievementDelegate: @sil_unmanaged GKAchievementViewControllerDelegate!
}
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(tvOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
  func decline()
  @available(tvOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(tvOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: NSDate { get }
  var completionDate: NSDate? { get }
  var message: String? { get }
  init()
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(tvOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension GKScore {
  @available(tvOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(tvOS 7.0, *)
  class func reportScores(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(tvOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(tvOS 8.0, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  class func reportAchievements(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
}
extension GKAchievement {
}
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
protocol GKChallengeListener : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  @available(tvOS 8.0, *)
  func addRecipientPlayers(players: [GKPlayer])
  func addRecipientsWithEmailAddresses(emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
}
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(tvOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
}
extension GKGameCenterViewController {
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
}
enum GKLeaderboardTimeScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Today
  case Week
  case AllTime
}
enum GKLeaderboardPlayerScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Global
  case FriendsOnly
}
@available(tvOS 4.1, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(tvOS 7.0, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var loading: Bool { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  init()
  @available(tvOS 8.0, *)
  init(players: [GKPlayer])
  func loadScoresWithCompletionHandler(completionHandler: (([GKScore]?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  class func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
}
extension GKLeaderboard {
}
extension GKLeaderboard {
}
@available(tvOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(tvOS 7.0, *)
  class func loadLeaderboardSetsWithCompletionHandler(completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
  init()
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
@available(tvOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(tvOS 6.0, *)
  var authenticateHandler: ((UIViewController?, NSError?) -> Void)?
  @available(tvOS 8.0, *)
  func loadFriendPlayersWithCompletionHandler(completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(completionHandler: ((String?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(tvOS 7.0, *)
  func registerListener(listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterAllListeners()
}
@available(tvOS 4.1, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
}
enum GKMatchSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StateUnknown
  case StateConnected
  case StateDisconnected
}
@available(tvOS 4.1, *)
class GKMatch : NSObject {
  @available(tvOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(tvOS 8.0, *)
  func sendData(data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(tvOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(tvOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKMatch?, NSError?) -> Void)?)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(tvOS 9.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(tvOS 4.1, *)
  optional func match(match: GKMatch, player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(tvOS 4.1, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(tvOS 8.0, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
}
extension GKMatch {
}
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InviteRecipientResponseAccepted
  case InviteRecipientResponseDeclined
  case InviteRecipientResponseFailed
  case InviteRecipientResponseIncompatible
  case InviteRecipientResponseUnableToConnect
  case InviteRecipientResponseNoAnswer
  static var InviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var InviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var InviteeResponseFailed: GKInviteRecipientResponse { get }
  static var InviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var InviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var InviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
@available(tvOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(tvOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(tvOS 6.0, *)
  var inviteMessage: String?
  @available(tvOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(tvOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(tvOS 6.0, *)
  class func maxPlayersAllowedForMatchOfType(matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
@available(tvOS 4.1, *)
class GKInvite : NSObject {
  @available(tvOS 8.0, *)
  var sender: GKPlayer { get }
  var hosted: Bool { get }
  @available(tvOS 6.0, *)
  var playerGroup: Int { get }
  @available(tvOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(tvOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(tvOS 4.1, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(tvOS 6.0, *)
  func matchForInvite(invite: GKInvite, completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(tvOS 8.0, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(tvOS 8.0, *)
  func cancelPendingInviteToPlayer(player: GKPlayer)
  @available(tvOS 6.0, *)
  func finishMatchmakingForMatch(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(completionHandler: ((Int, NSError?) -> Void)?)
  @available(tvOS 8.0, *)
  func startBrowsingForNearbyPlayersWithHandler(reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(tvOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
}
@available(tvOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var hosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(tvOS 5.0, *)
  func addPlayersToMatch(match: GKMatch)
  @available(tvOS 8.0, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 4.1, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(tvOS 4.1, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(tvOS 4.1, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindMatch match: GKMatch)
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
}
@available(tvOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(tvOS 5.0, *)
  class func showBannerWithTitle(title: String?, message: String?, completionHandler: (() -> Void)?)
  @available(tvOS 6.0, *)
  class func showBannerWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)?)
  init()
}
@available(tvOS 4.1, *)
class GKPlayer : NSObject {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  var playerID: String? { get }
  @available(tvOS 6.0, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(tvOS 9.0, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(tvOS 9.0, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(tvOS 5.0, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((UIImage?, NSError?) -> Void)?)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
}
protocol GKSessionDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChangeState state: GKPeerConnectionState)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: NSError)
  optional func session(session: GKSession, didFailWithError error: NSError)
}
protocol GKVoiceChatClient : NSObjectProtocol {
  func voiceChatService(voiceChatService: GKVoiceChatService, sendData data: NSData, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTimeData data: NSData, toParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
extension GKLocalPlayer : GKSavedGameListener {
}
@available(tvOS 8.0, *)
protocol GKSavedGameListener : NSObjectProtocol {
}
@available(tvOS 4.1, *)
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(tvOS 8.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(tvOS 7.0, *)
  var leaderboardIdentifier: String
  @available(tvOS 5.0, *)
  var context: UInt64
  var date: NSDate { get }
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(tvOS 5.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(tvOS 6.0, *)
  class func reportScores(scores: [GKScore], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  init()
  @available(tvOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
}
let GKSessionErrorDomain: String
enum GKTurnBasedMatchStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Open
  case Ended
  case Matching
}
enum GKTurnBasedParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Invited
  case Declined
  case Matching
  case Active
  case Done
}
enum GKTurnBasedMatchOutcome : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Quit
  case Won
  case Lost
  case Tied
  case TimeExpired
  case First
  case Second
  case Third
  case Fourth
  case CustomRange
}
@available(tvOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(tvOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(tvOS 6.0, *)
  @NSCopying var timeoutDate: NSDate? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(tvOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(tvOS 5.0, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 9.0, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(tvOS 6.0, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(tvOS 6.0, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(tvOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(tvOS 7.0, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(tvOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  class func loadMatchWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  func acceptInviteWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  func declineInviteWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func participantQuitInTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func endMatchInTurnWithMatchData(matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func saveCurrentTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func saveMergedMatchData(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func sendExchangeToParticipants(participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(tvOS 7.0, *)
  func sendReminderToParticipants(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(tvOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
@available(tvOS 7.0, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(tvOS 7.0, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(tvOS 7.0, *)
class GKTurnBasedExchange : NSObject {
  var exchangeID: String? { get }
  var sender: GKTurnBasedParticipant? { get }
  var recipients: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedExchangeStatus { get }
  var message: String? { get }
  var data: NSData? { get }
  var sendDate: NSDate? { get }
  var timeoutDate: NSDate? { get }
  var completionDate: NSDate? { get }
  var replies: [GKTurnBasedExchangeReply]? { get }
  @available(tvOS 7.0, *)
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(tvOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(tvOS 8.0, *)
  var replyDate: NSDate? { get }
  init()
}
@available(tvOS 5.0, *)
class GKTurnBasedMatchmakerViewController : UINavigationController {
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKTurnBasedMatchmakerViewController {
  unowned(unsafe) var turnBasedMatchmakerDelegate: @sil_unmanaged GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func turnBasedMatchmakerViewControllerWasCancelled(viewController: GKTurnBasedMatchmakerViewController)
  @available(tvOS 5.0, *)
  func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: NSError)
}
enum GKVoiceChatPlayerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connected
  case Disconnected
  case Speaking
  case Silent
  case Connecting
}
@available(tvOS 4.1, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(tvOS 8.0, *)
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  @available(tvOS 8.0, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var active: Bool
  var volume: Float
  @available(tvOS 8.0, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
}
let GKVoiceChatServiceErrorDomain: String
