
@available(tvOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var authenticated: Bool { get }
  var underage: Bool { get }
  @available(tvOS 6.0, *)
  var authenticateHandler: ((UIViewController?, NSError?) -> Void)?
  @available(tvOS 8.0, *)
  func loadFriendPlayersWithCompletionHandler(_ completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func loadDefaultLeaderboardIdentifierWithCompletionHandler(_ completionHandler: ((String?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func generateIdentityVerificationSignatureWithCompletionHandler(_ completionHandler: ((NSURL?, NSData?, NSData?, UInt64, NSError?) -> Void)?)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(tvOS 7.0, *)
  func registerListener(_ listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterAllListeners()
}
@available(tvOS 4.1, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
}
