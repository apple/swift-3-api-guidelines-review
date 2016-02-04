
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
