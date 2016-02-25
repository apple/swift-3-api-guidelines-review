
@available(OSX 10.8, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(OSX 10.9, *)
  var authenticateHandler: ((NSViewController?, NSError?) -> Void)?
  @available(OSX 10.10, *)
  func loadFriendPlayersWithCompletionHandler(_ completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(_ completionHandler: ((String?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(_ completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(OSX 10.10, *)
  func registerListener(_ listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterAllListeners()
}
@available(OSX 10.8, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(_ categoryID: String?, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryIDWithCompletionHandler(_ completionHandler: ((String?, NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriendsWithCompletionHandler(_ completionHandler: (([String]?, NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
