
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(iOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(_ completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
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
  var issueDate: NSDate { get }
  var completionDate: NSDate? { get }
  var message: String? { get }
  @available(iOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(iOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(iOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer]?, completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 7.0, *)
  class func reportScores(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer], completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 8.0, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  class func reportAchievements(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(_ playerIDs: [String]?, message message: String?, completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
}
extension GKAchievement {
  @available(iOS, introduced=6.0, deprecated=8.0, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(_ playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(_ playerIDs: [String]?, message message: String?, completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
}
