
@available(OSX 10.8, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievements(completionHandler completionHandler: (([GKAchievement]?, NSError?) -> Void)? = nil)
  class func resetAchievements(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  init(identifier: String?)
  @available(OSX 10.10, *)
  init(identifier: String?, player: GKPlayer)
  @available(OSX 10.8, *)
  class func report(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
  var identifier: String?
  var percentComplete: Double
  var isCompleted: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(OSX 10.8, *)
  var showsCompletionBanner: Bool
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  init()
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportAchievements:withCompletionHandler:")
  func report(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use isHidden on the GKAchievementDescription class instead")
  var isHidden: Bool { get }
}
@available(OSX 10.8, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptions(completionHandler completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)? = nil)
  var identifier: String? { get }
  @available(OSX 10.8, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(OSX 10.8, *)
  var isReplayable: Bool { get }
  init()
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  @available(OSX 10.8, *)
  var image: NSImage? { get }
  func loadImage(completionHandler completionHandler: ((NSImage?, NSError?) -> Void)? = nil)
  class func incompleteAchievementImage() -> NSImage
  class func placeholderCompletedAchievementImage() -> NSImage
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
class GKAchievementViewController : GKGameCenterViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKAchievementViewController {
  unowned(unsafe) var achievementDelegate: @sil_unmanaged GKAchievementViewControllerDelegate!
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
protocol GKAchievementViewControllerDelegate : NSObjectProtocol {
  func achievementViewControllerDidFinish(viewController: GKAchievementViewController!)
}
typealias GKChallengeComposeCompletionBlock = (NSViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(OSX 10.8, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallenges(completionHandler completionHandler: (([GKChallenge]?, NSError?) -> Void)? = nil)
  func decline()
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use issuingPlayer instead")
  var issuingPlayerID: String? { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use receivingPlayer instead")
  var receivingPlayerID: String? { get }
  @available(OSX 10.10, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(OSX 10.10, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: NSDate { get }
  var completionDate: NSDate? { get }
  var message: String? { get }
  init()
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
@available(OSX 10.8, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension GKScore {
  @available(OSX 10.10, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  class func report(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
}
extension GKAchievement {
  @available(OSX 10.10, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  class func report(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
}
extension GKScore {
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)? = nil)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
protocol GKChallengeEventHandlerDelegate : NSObjectProtocol {
  optional func localPlayerDidSelect(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyReceivedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidReceive(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidComplete(challenge: GKChallenge!)
  optional func shouldShowBannerForRemotelyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func remotePlayerDidComplete(challenge: GKChallenge!)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
class GKChallengeEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged GKChallengeEventHandlerDelegate!
  init()
}
@available(OSX, introduced=10.8, deprecated=10.10)
class GKChallengesViewController : NSViewController, GKViewController {
  unowned(unsafe) var challengeDelegate: @sil_unmanaged GKChallengesViewControllerDelegate!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol GKChallengesViewControllerDelegate {
  @available(OSX 10.8, *)
  func challengesViewControllerDidFinish(viewController: GKChallengesViewController!)
}
protocol GKViewController {
}
class GKDialogController : NSResponder {
  @IBOutlet unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  func present(viewController: NSViewController) -> Bool
  @IBAction func dismiss(sender: AnyObject)
  init()
  init?(coder: NSCoder)
}
extension GKDialogController {
  class func shared() -> GKDialogController
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
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, wantsToPlay challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didReceive challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didComplete challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
@available(OSX 10.8, *)
class GKFriendRequestComposeViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  @available(OSX 10.10, *)
  func addRecipientPlayers(players: [GKPlayer])
  @available(OSX, introduced=10.8, deprecated=10.10, message="use addRecipientPlayers:")
  func addRecipientsWithPlayerIDs(playerIDs: [String])
  func addRecipientsWithEmailAddresses(emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(OSX 10.8, *)
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
@available(OSX 10.9, *)
class GKGameCenterViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
  var viewState: GKGameCenterViewControllerState
}
extension GKGameCenterViewController {
  @available(OSX 10.8, *)
  var leaderboardTimeScope: GKLeaderboardTimeScope
  @available(OSX 10.10, *)
  var leaderboardIdentifier: String?
  @available(OSX, introduced=10.8, deprecated=10.10, message="GKGameCenterViewController's leaderboardCategory property is deprecated. Use leaderboardIdentifier instead.")
  var leaderboardCategory: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
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
@available(OSX 10.8, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(OSX 10.10, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var isLoading: Bool { get }
  @available(OSX 10.9, *)
  var groupIdentifier: String? { get }
  init()
  @available(OSX 10.10, *)
  init(players: [GKPlayer])
  func loadScores(completionHandler completionHandler: (([GKScore]?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  class func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, NSError?) -> Void)? = nil)
}
extension GKLeaderboard {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use identifier instead")
  var category: String?
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: on GKLocalPlayer instead")
  class func setDefaultLeaderboard(leaderboardIdentifier: String?, withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
}
extension GKLeaderboard {
  @available(OSX 10.8, *)
  func loadImage(completionHandler completionHandler: ((NSImage?, NSError?) -> Void)? = nil)
}
@available(OSX 10.10, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(OSX 10.10, *)
  class func loadLeaderboardSets(completionHandler completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, NSError?) -> Void)? = nil)
  init()
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImage(completionHandler completionHandler: ((NSImage?, NSError?) -> Void)? = nil)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
class GKLeaderboardViewController : GKGameCenterViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
protocol GKLeaderboardViewControllerDelegate : NSObjectProtocol {
  func leaderboardViewControllerDidFinish(viewController: GKLeaderboardViewController!)
}
@available(OSX 10.8, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(OSX 10.9, *)
  var authenticateHandler: ((NSViewController?, NSError?) -> Void)?
  @available(OSX 10.10, *)
  func loadFriendPlayers(completionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func loadDefaultLeaderboardIdentifier(completionHandler completionHandler: ((String?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func generateIdentityVerificationSignature(completionHandler completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)? = nil)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(OSX 10.10, *)
  func register(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterAllListeners()
}
@available(OSX 10.8, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(categoryID: String?, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryID(completionHandler completionHandler: ((String?, NSError?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriends(completionHandler completionHandler: (([String]?, NSError?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
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
@available(OSX 10.8, *)
class GKMatch : NSObject {
  @available(OSX 10.10, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(OSX 10.10, *)
  func send(data: NSData, to players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(OSX 10.10, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(OSX 10.9, *)
  func rematch(completionHandler completionHandler: ((GKMatch?, NSError?) -> Void)? = nil)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, didReceive data: NSData, fromRemotePlayer player: GKPlayer)
  @available(OSX 10.11, *)
  optional func match(match: GKMatch, didReceive data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceive data: NSData, fromPlayer playerID: String)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(OSX, introduced=10.9, deprecated=10.10, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayerWithCompletionHandler(completionHandler: (String?) -> Void)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use sendData:toPlayers:dataMode:error:")
  func send(data: NSData, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10, message="use players")
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
@available(OSX 10.8, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(OSX 10.10, *)
  var recipients: [GKPlayer]?
  @available(OSX, introduced=10.8, deprecated=10.10, message="use recipients")
  var playersToInvite: [String]?
  @available(OSX 10.8, *)
  var inviteMessage: String?
  @available(OSX 10.8, *)
  var defaultNumberOfPlayers: Int
  @available(OSX 10.10, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(OSX, introduced=10.9, deprecated=10.10, message="use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(OSX 10.9, *)
  class func maxPlayersAllowedForMatchOf(matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
@available(OSX 10.8, *)
class GKInvite : NSObject {
  @available(OSX 10.10, *)
  var sender: GKPlayer { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use sender")
  var inviter: String { get }
  var isHosted: Bool { get }
  @available(OSX 10.9, *)
  var playerGroup: Int { get }
  @available(OSX 10.9, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didAccept invite: GKInvite)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(OSX 10.8, *)
class GKMatchmaker : NSObject {
  class func shared() -> GKMatchmaker
  @available(OSX 10.9, *)
  func matchFor(invite: GKInvite, completionHandler: ((GKMatch?, NSError?) -> Void)? = nil)
  func findMatchFor(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)? = nil)
  func addPlayersTo(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((NSError?) -> Void)? = nil)
  func cancel()
  @available(OSX 10.10, *)
  func cancelPendingInviteTo(player: GKPlayer)
  @available(OSX 10.9, *)
  func finishMatchmakingFor(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)? = nil)
  func queryActivity(completionHandler completionHandler: ((Int, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(OSX 10.9, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer to register an object that implements the GKInviteEventListenerProtocol instead")
  var inviteHandler: ((GKInvite, [AnyObject]?) -> Void)?
  @available(OSX, introduced=10.9, deprecated=10.10)
  func startBrowsingForNearbyPlayers(reachableHandler reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(OSX, introduced=10.9, deprecated=10.10, message="use cancelPendingInviteToPlayer:")
  func cancelInviteToPlayer(playerID: String)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)? = nil)
}
@available(OSX 10.8, *)
class GKMatchmakerViewController : NSViewController, GKViewController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(OSX 10.8, *)
  func addPlayersTo(match: GKMatch)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setHostedPlayer:didConnect:")
  func setHostedPlayer(playerID: String, connected: Bool)
  @available(OSX 10.10, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  var defaultInvitationMessage: String?
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(OSX 10.8, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(OSX 10.8, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:didFindHostedPlayers:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:hostedPlayerDidAccept:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}
@available(OSX 10.8, *)
class GKNotificationBanner : NSObject {
  @available(OSX 10.8, *)
  class func showWithTitle(title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(OSX 10.8, *)
  class func showWithTitle(title: String?, message: String?, duration: NSTimeInterval, completionHandler: (() -> Void)? = nil)
  init()
}
@available(OSX 10.8, *)
class GKPlayer : NSObject {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)? = nil)
  var playerID: String? { get }
  @available(OSX 10.8, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(OSX 10.11, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(OSX 10.11, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(OSX 10.8, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((NSImage?, NSError?) -> Void)? = nil)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKSendDataMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Reliable
  case Unreliable
}
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKSessionMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Server
  case Client
  case Peer
}
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKPeerConnectionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StateAvailable
  case StateUnavailable
  case StateConnected
  case StateDisconnected
  case StateConnecting
}
protocol GKSessionDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func session(session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  @available(OSX 10.8, *)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  @available(OSX 10.8, *)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: NSError)
  @available(OSX 10.8, *)
  optional func session(session: GKSession, didFailWithError error: NSError)
}
protocol GKVoiceChatClient : NSObjectProtocol {
  func voiceChatService(voiceChatService: GKVoiceChatService, send data: NSData, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTime data: NSData, toParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
@available(OSX 10.10, *)
class GKSavedGame : NSObject, NSCopying {
  @available(OSX 10.10, *)
  var name: String? { get }
  @available(OSX 10.10, *)
  var deviceName: String? { get }
  @available(OSX 10.10, *)
  var modificationDate: NSDate? { get }
  @available(OSX 10.10, *)
  func loadData(completionHandler handler: ((NSData?, NSError?) -> Void)? = nil)
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(OSX 10.10, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func saveGameData(data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func deleteSavedGamesWithName(name: String, completionHandler handler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
@available(OSX 10.10, *)
protocol GKSavedGameListener : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
@available(OSX 10.8, *)
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(OSX 10.10, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(OSX 10.10, *)
  var leaderboardIdentifier: String
  @available(OSX 10.8, *)
  var context: UInt64
  var date: NSDate { get }
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(OSX 10.8, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(OSX 10.8, *)
  class func report(scores: [GKScore], withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
  init()
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportScores:withCompletionhandler: instead")
  func report(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use initWithLeaderboardIdentifier: instead")
  init(category: String?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use player")
  var playerID: String { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use leaderboardIdentifier instead")
  var category: String?
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use MCSession from the MultipeerConnectivity framework instead")
class GKSession : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  init!(sessionID: String!, displayName name: String!, sessionMode mode: GKSessionMode)
  unowned(unsafe) var delegate: @sil_unmanaged GKSessionDelegate!
  var sessionID: String! { get }
  var displayName: String! { get }
  @available(OSX, introduced=10.8, deprecated=10.10)
  var sessionMode: GKSessionMode { get }
  var peerID: String! { get }
  var isAvailable: Bool
  var disconnectTimeout: NSTimeInterval
  func displayNameForPeer(peerID: String!) -> String!
  @available(OSX, introduced=10.8, deprecated=10.10)
  func send(data: NSData!, toPeers peers: [AnyObject]!, withDataMode mode: GKSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendDataToAllPeers(data: NSData!, withDataMode mode: GKSendDataMode) throws
  func setDataReceiveHandler(handler: AnyObject!, withContext context: UnsafeMutablePointer<Void>)
  func connectToPeer(peerID: String!, withTimeout timeout: NSTimeInterval)
  func cancelConnectToPeer(peerID: String!)
  func acceptConnectionFromPeer(peerID: String!) throws
  func denyConnectionFromPeer(peerID: String!)
  func disconnectPeerFromAllPeers(peerID: String!)
  func disconnectFromAllPeers()
  @available(OSX, introduced=10.8, deprecated=10.10)
  func peersWith(state: GKPeerConnectionState) -> [AnyObject]!
  init()
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
@available(OSX 10.8, *)
class GKTurnBasedParticipant : NSObject {
  @available(OSX 10.10, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(OSX 10.8, *)
  @NSCopying var timeoutDate: NSDate? { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use player")
  var playerID: String? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(OSX 10.8, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.11, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(OSX 10.9, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(OSX 10.9, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(OSX 10.8, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(OSX 10.10, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(OSX 10.8, *)
  var matchDataMaximumSize: Int { get }
  @available(OSX 10.10, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var exchangeDataMaximumSize: Int { get }
  @available(OSX 10.10, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findFor(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatches(completionHandler completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  class func loadWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func rematch(completionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func acceptInvite(completionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func declineInvite(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func remove(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func loadData(completionHandler completionHandler: ((NSData?, NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func participantQuitInTurnWith(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  func participantQuitOutOfTurnWith(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func endMatchInTurnWithMatch(matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func endMatchInTurnWithMatch(matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func saveCurrentTurnWithMatch(matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func saveMergedMatch(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func sendExchangeTo(participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)? = nil)
  @available(OSX 10.10, *)
  func sendReminderTo(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
@available(OSX 10.10, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(OSX 10.10, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(OSX 10.10, *)
  var replyDate: NSDate? { get }
  init()
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
protocol GKTurnBasedEventHandlerDelegate {
  @available(OSX, introduced=10.8, deprecated=10.10)
  func handleInviteFromGameCenter(playersToInvite: [GKPlayer])
  @available(OSX, introduced=10.9, deprecated=10.10)
  func handleTurnEventFor(match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func handleMatchEnded(match: GKTurnBasedMatch)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
class GKTurnBasedEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func shared() -> GKTurnBasedEventHandler
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged protocol<GKTurnBasedEventHandlerDelegate, NSObjectProtocol>
  init()
}
@available(OSX 10.8, *)
class GKTurnBasedMatchmakerViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKTurnBasedMatchmakerViewController {
  unowned(unsafe) var turnBasedMatchmakerDelegate: @sil_unmanaged GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  func turnBasedMatchmakerViewControllerWasCancelled(viewController: GKTurnBasedMatchmakerViewController)
  @available(OSX 10.8, *)
  func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: NSError)
  @available(OSX, introduced=10.8, deprecated=10.11, message="use GKTurnBasedEventListener player:receivedTurnEventForMatch:didBecomeActive:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFind match: GKTurnBasedMatch)
  @available(OSX, introduced=10.8, deprecated=10.11, message="use GKTurnBasedEventListener player:wantsToQuitMatch:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, playerQuitFor match: GKTurnBasedMatch)
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
@available(OSX 10.8, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(OSX 10.10, *)
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  @available(OSX 10.10, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var isActive: Bool
  var volume: Float
  @available(OSX 10.10, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
  @available(OSX, introduced=10.8, deprecated=10.10, message="use players")
  var playerIDs: [String] { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChatPlayerState) -> Void
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setPlayer:muted:")
  func setMute(isMuted: Bool, forPlayer playerID: String)
}
let GKVoiceChatServiceErrorDomain: String
