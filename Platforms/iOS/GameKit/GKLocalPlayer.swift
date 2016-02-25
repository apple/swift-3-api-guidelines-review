
@available(iOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(iOS 6.0, *)
  var authenticateHandler: ((UIViewController?, NSError?) -> Void)?
  @available(iOS 8.0, *)
  func loadFriendPlayersWithCompletionHandler(_ completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(_ completionHandler: ((String?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(_ completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(iOS 7.0, *)
  func registerListener(_ listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterAllListeners()
}
@available(iOS 4.1, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(iOS, introduced=4.1, deprecated=8.0, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriendsWithCompletionHandler(_ completionHandler: (([String]?, NSError?) -> Void)?)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
