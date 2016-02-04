
@available(tvOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(tvOS 6.0, *)
  var authenticateHandler: ((UIViewController?, Error?) -> Void)?
  @available(tvOS 8.0, *)
  func loadFriendPlayers(completionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func loadDefaultLeaderboardIdentifier(completionHandler completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func generateIdentityVerificationSignature(completionHandler completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(tvOS 7.0, *)
  func register(listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterAllListeners()
}
@available(tvOS 4.1, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
}
