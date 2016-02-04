
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
  class func loadReceivedChallengesWithCompletionHandler(completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
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
  func encodeWithCoder(aCoder: NSCoder)
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
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock?) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  class func reportScores(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(OSX 10.10, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock?) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(playerIDs: [String]?, message: String?)
  @available(OSX 10.10, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  class func reportAchievements(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
