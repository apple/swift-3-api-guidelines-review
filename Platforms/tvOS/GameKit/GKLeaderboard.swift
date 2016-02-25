
enum GKLeaderboardTimeScope : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Today
  case Week
  case AllTime
}
enum GKLeaderboardPlayerScope : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Global
  case FriendsOnly
}
@available(tvOS 4.1, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(tvOS 7.0, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var loading: Bool { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  @available(tvOS 8.0, *)
  init(players players: [GKPlayer])
  func loadScoresWithCompletionHandler(_ completionHandler: (([GKScore]?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  class func loadLeaderboardsWithCompletionHandler(_ completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
}
extension GKLeaderboard {
}
extension GKLeaderboard {
}
