
@available(iOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init(identifier: String?)
  @available(iOS 8.0, *)
  init(identifier: String?, player: GKPlayer)
  @available(iOS 6.0, *)
  class func reportAchievements(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(iOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(iOS 8.0, *)
  var player: GKPlayer { get }
  init()
  @available(iOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(iOS, introduced=7.0, deprecated=8.0, message="use initWithIdentifier:player:")
  init(identifier: String?, forPlayer playerID: String)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player")
  var playerID: String { get }
}
@available(iOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptionsWithCompletionHandler(completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)?)
  var identifier: String? { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var hidden: Bool { get }
  @available(iOS 6.0, *)
  var replayable: Bool { get }
  init()
  @available(iOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
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
@available(iOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
  func decline()
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use issuingPlayer instead")
  var issuingPlayerID: String? { get }
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use receivingPlayer instead")
  var receivingPlayerID: String? { get }
  @available(iOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(iOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: NSDate { get }
  var completionDate: NSDate? { get }
  var message: String? { get }
  init()
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(iOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension GKScore {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 7.0, *)
  class func reportScores(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 8.0, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  class func reportAchievements(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
}
extension GKAchievement {
  @available(iOS, introduced=6.0, deprecated=8.0, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
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
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
@available(iOS 4.2, *)
class GKFriendRequestComposeViewController : UINavigationController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  @available(iOS 8.0, *)
  func addRecipientPlayers(players: [GKPlayer])
  @available(iOS, introduced=4.2, deprecated=8.0, message="use addRecipientPlayers:")
  func addRecipientsWithPlayerIDs(playerIDs: [String])
  func addRecipientsWithEmailAddresses(emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(iOS 4.2, *)
  func friendRequestComposeViewControllerDidFinish(viewController: GKFriendRequestComposeViewController)
}
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(iOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
  var viewState: GKGameCenterViewControllerState
}
extension GKGameCenterViewController {
  @available(iOS 4.1, *)
  var leaderboardTimeScope: GKLeaderboardTimeScope
  @available(iOS 7.0, *)
  var leaderboardIdentifier: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
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
@available(iOS 4.1, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(iOS 7.0, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var loading: Bool { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  init()
  @available(iOS 8.0, *)
  init(players: [GKPlayer])
  func loadScoresWithCompletionHandler(completionHandler: (([GKScore]?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  class func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
}
extension GKLeaderboard {
  @available(iOS, introduced=4.1, deprecated=8.0, message="Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
}
extension GKLeaderboard {
  @available(iOS 7.0, *)
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
}
@available(iOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(iOS 7.0, *)
  class func loadLeaderboardSetsWithCompletionHandler(completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
  init()
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
@available(iOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(iOS 6.0, *)
  var authenticateHandler: ((UIViewController?, NSError?) -> Void)?
  @available(iOS 8.0, *)
  func loadFriendPlayersWithCompletionHandler(completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(completionHandler: ((String?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(iOS 7.0, *)
  func registerListener(listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterAllListeners()
}
@available(iOS 4.1, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(iOS, introduced=4.1, deprecated=8.0, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriendsWithCompletionHandler(completionHandler: (([String]?, NSError?) -> Void)?)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
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
@available(iOS 4.1, *)
class GKMatch : NSObject {
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(iOS 8.0, *)
  func sendData(data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(iOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKMatch?, NSError?) -> Void)?)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(iOS 9.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceiveData data: NSData, fromPlayer playerID: String)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:player:didChangeConnectionState:")
  optional func match(match: GKMatch, player playerID: String, didChangeState state: GKPlayerConnectionState)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(iOS, introduced=5.0, deprecated=8.0, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(iOS, introduced=6.0, deprecated=8.0, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayerWithCompletionHandler(completionHandler: (String?) -> Void)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sendData:toPlayers:dataMode:error:")
  func sendData(data: NSData, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(iOS, introduced=4.1, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
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
@available(iOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(iOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(iOS, introduced=4.1, deprecated=8.0, message="use recipients")
  var playersToInvite: [String]?
  @available(iOS 6.0, *)
  var inviteMessage: String?
  @available(iOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(iOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(iOS, introduced=6.0, deprecated=8.0, message="use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(iOS 6.0, *)
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
@available(iOS 4.1, *)
class GKInvite : NSObject {
  @available(iOS 8.0, *)
  var sender: GKPlayer { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sender")
  var inviter: String { get }
  var hosted: Bool { get }
  @available(iOS 6.0, *)
  var playerGroup: Int { get }
  @available(iOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player:didRequestMatchWithRecipients:")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(iOS 6.0, *)
  func matchForInvite(invite: GKInvite, completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInviteToPlayer(player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmakingForMatch(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(completionHandler: ((Int, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayersWithHandler(reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
  @available(iOS, introduced=6.0, deprecated=8.0)
  func startBrowsingForNearbyPlayersWithReachableHandler(reachableHandler: ((String, Bool) -> Void)?)
  @available(iOS, introduced=6.0, deprecated=8.0, message="use cancelPendingInviteToPlayer:")
  func cancelInviteToPlayer(playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
@available(iOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var hosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(iOS 5.0, *)
  func addPlayersToMatch(match: GKMatch)
  @available(iOS, introduced=5.0, deprecated=8.0, message="use setHostedPlayer:didConnect:")
  func setHostedPlayer(playerID: String, connected: Bool)
  @available(iOS 8.0, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.1, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(iOS 4.1, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(iOS 4.1, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindMatch match: GKMatch)
  @available(iOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(iOS, introduced=4.1, deprecated=8.0, message="use matchmakerViewController:didFindHostedPlayers:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(iOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(iOS, introduced=5.0, deprecated=8.0, message="use matchmakerViewController:hostedPlayerDidAccept:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}
@available(iOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(iOS 5.0, *)
  class func showBannerWithTitle(title: String?, message: String?, completionHandler: (() -> Void)?)
  @available(iOS 6.0, *)
  class func showBannerWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)?)
  init()
}
protocol GKPeerPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didSelectConnectionType type: GKPeerPickerConnectionType)
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, sessionForConnectionType type: GKPeerPickerConnectionType) -> GKSession
  @available(iOS 3.0, *)
  optional func peerPickerController(picker: GKPeerPickerController, didConnectPeer peerID: String, toSession session: GKSession)
  @available(iOS 3.0, *)
  optional func peerPickerControllerDidCancel(picker: GKPeerPickerController)
}
@available(iOS 4.1, *)
class GKPlayer : NSObject {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  var playerID: String? { get }
  @available(iOS 6.0, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(iOS 9.0, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(iOS 9.0, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(iOS 5.0, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((UIImage?, NSError?) -> Void)?)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
  @available(iOS, introduced=4.1, deprecated=8.0, message="use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
protocol GKSessionDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChangeState state: GKPeerConnectionState)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: NSError)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didFailWithError error: NSError)
}
protocol GKVoiceChatClient : NSObjectProtocol {
  @available(iOS 3.0, *)
  func voiceChatService(voiceChatService: GKVoiceChatService, sendData data: NSData, toParticipantID participantID: String)
  func participantID() -> String
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTimeData data: NSData, toParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: NSError?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: NSError?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
@available(iOS 8.0, *)
class GKSavedGame : NSObject, NSCopying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: NSDate? { get }
  @available(iOS 8.0, *)
  func loadDataWithCompletionHandler(handler: ((NSData?, NSError?) -> Void)?)
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGamesWithCompletionHandler(handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func saveGameData(data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func deleteSavedGamesWithName(name: String, completionHandler handler: ((NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
@available(iOS 8.0, *)
protocol GKSavedGameListener : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
@available(iOS 4.1, *)
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(iOS 8.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(iOS 7.0, *)
  var leaderboardIdentifier: String
  @available(iOS 5.0, *)
  var context: UInt64
  var date: NSDate { get }
  @available(iOS 8.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(iOS 5.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(iOS 6.0, *)
  class func reportScores(scores: [GKScore], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  init()
  @available(iOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="use initWithLeaderboardIdentifier:player:")
  init(leaderboardIdentifier identifier: String, forPlayer playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use player")
  var playerID: String { get }
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
@available(iOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(iOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(iOS 6.0, *)
  @NSCopying var timeoutDate: NSDate? { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="use player")
  var playerID: String? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(iOS 5.0, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 9.0, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use didRequestMatchWithOtherPlayers")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 6.0, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(iOS 6.0, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(iOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(iOS 7.0, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(iOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  class func loadMatchWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func acceptInviteWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func declineInviteWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func participantQuitInTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func endMatchInTurnWithMatchData(matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func saveCurrentTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func saveMergedMatchData(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func sendExchangeToParticipants(participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(iOS 7.0, *)
  func sendReminderToParticipants(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(iOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
@available(iOS 7.0, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(iOS 7.0, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(iOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(iOS 8.0, *)
  var replyDate: NSDate? { get }
  init()
}
@available(iOS 5.0, *)
class GKTurnBasedMatchmakerViewController : UINavigationController {
  @available(iOS 5.0, *)
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
  @available(iOS 5.0, *)
  func turnBasedMatchmakerViewControllerWasCancelled(viewController: GKTurnBasedMatchmakerViewController)
  @available(iOS 5.0, *)
  func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: NSError)
  @available(iOS, introduced=5.0, deprecated=9.0, message="use GKTurnBasedEventListener player:receivedTurnEventForMatch:didBecomeActive:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFindMatch match: GKTurnBasedMatch)
  @available(iOS, introduced=5.0, deprecated=9.0, message="use GKTurnBasedEventListener player:wantsToQuitMatch:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, playerQuitForMatch match: GKTurnBasedMatch)
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
@available(iOS 4.1, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(iOS 8.0, *)
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  @available(iOS 8.0, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var active: Bool
  var volume: Float
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
  @available(iOS, introduced=5.0, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChatPlayerState) -> Void
  @available(iOS, introduced=5.0, deprecated=8.0, message="use setPlayer:muted:")
  func setMute(isMuted: Bool, forPlayer playerID: String)
}
let GKVoiceChatServiceErrorDomain: String
