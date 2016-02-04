
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(iOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
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
  init()
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(iOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension GKScore {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 7.0, *)
  class func reportScores(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func challengeComposeControllerWithMessage(message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(iOS 8.0, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  class func reportAchievements(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
}
extension GKAchievement {
  @available(iOS, introduced=6.0, deprecated=8.0, message="pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
  @available(iOS, introduced=7.0, deprecated=8.0, message="pass GKPlayers to challengeComposeControllerWithMessage:players:")
  func challengeComposeControllerWithPlayers(playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController?
}
