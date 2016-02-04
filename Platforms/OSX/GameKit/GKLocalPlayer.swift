
@available(OSX 10.8, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(OSX 10.9, *)
  var authenticateHandler: ((NSViewController?, NSError?) -> Void)?
  @available(OSX 10.10, *)
  func loadFriendPlayersWithCompletionHandler(completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(completionHandler: ((String?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(OSX 10.10, *)
  func registerListener(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterAllListeners()
}
@available(OSX 10.8, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(categoryID: String?, completionHandler: ((NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryIDWithCompletionHandler(completionHandler: ((String?, NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriendsWithCompletionHandler(completionHandler: (([String]?, NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
