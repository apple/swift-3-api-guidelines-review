
typealias GKChallengeComposeCompletionBlock = (NSViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(OSX 10.8, *)
class GKChallenge : Object, Coding, SecureCoding {
  class func loadReceivedChallenges(completionHandler completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
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
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
  init()
  @available(OSX 10.8, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
@available(OSX 10.8, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.8, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: Coder)
}
extension GKScore {
  @available(OSX 10.10, *)
  func challengeComposeController(message message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallenge(toPlayers playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  class func report(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKAchievement {
  @available(OSX 10.10, *)
  func challengeComposeController(message message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallenge(toPlayers playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  class func report(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKScore {
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
}
