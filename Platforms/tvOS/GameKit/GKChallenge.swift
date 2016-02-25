
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Pending
  case Completed
  case Declined
}
@available(tvOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallengesWithCompletionHandler(_ completionHandler: (([GKChallenge]?, NSError?) -> Void)?)
  func decline()
  @available(tvOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(tvOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: NSDate { get }
  var completionDate: NSDate? { get }
  var message: String? { get }
  @available(tvOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(tvOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(tvOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(tvOS 8.0, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer]?, completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(tvOS 7.0, *)
  class func reportScores(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKAchievement {
  @available(tvOS 8.0, *)
  func challengeComposeControllerWithMessage(_ message: String?, players players: [GKPlayer], completionHandler completionHandler: GKChallengeComposeCompletionBlock?) -> UIViewController
  @available(tvOS 8.0, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  class func reportAchievements(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKScore {
}
extension GKAchievement {
}
