
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(tvOS 6.0, *)
class GKChallenge : Object, Coding, SecureCoding {
  class func loadReceivedChallenges(completionHandler completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
  func decline()
  @available(tvOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(tvOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
  init()
  @available(tvOS 6.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
}
@available(tvOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(tvOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
  init()
  init?(coder aDecoder: Coder)
}
extension GKScore {
  @available(tvOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  @available(tvOS 7.0, *)
  class func report(scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKAchievement {
  @available(tvOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
  @available(tvOS 8.0, *)
  func selectChallengeablePlayers(players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  class func report(achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKScore {
}
extension GKAchievement {
}
