
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(iOS 6.0, *)
class GKChallenge : Object, Coding, SecureCoding {
  class func loadReceivedChallenges(completionHandler completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
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
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
  init()
  @available(iOS 6.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(iOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: Coder)
}
extension GKScore {
  @available(iOS 8.0, *)
  func challengeComposeController(message message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  @available(iOS 7.0, *)
  class func report(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func challengeComposeController(message message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  @available(iOS 8.0, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func report(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeController(players playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
extension GKAchievement {
  @available(iOS, introduced=6.0, deprecated=8.0, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeController(players playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
