
typealias GKChallengeComposeCompletionBlock = (NSViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(OSX 10.8, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(_ completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
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
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
@available(OSX 10.8, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(OSX 10.8, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(OSX 10.10, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer]?, completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(_ playerIDs: [String]?, message message: String?)
  @available(OSX 10.10, *)
  class func reportScores(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(OSX 10.10, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer], completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> NSViewController
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallengeToPlayers(_ playerIDs: [String]?, message message: String?)
  @available(OSX 10.10, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  class func reportAchievements(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(_ playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
