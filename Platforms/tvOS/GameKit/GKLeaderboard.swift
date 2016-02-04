
enum GKLeaderboardTimeScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Today
  case Week
  case AllTime
}
enum GKLeaderboardPlayerScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Global
  case FriendsOnly
}
@available(tvOS 4.1, *)
class GKLeaderboard : Object {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(tvOS 7.0, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var isLoading: Bool { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  init()
  @available(tvOS 8.0, *)
  init(players: [GKPlayer])
  func loadScores(completionHandler completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  class func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
}
extension GKLeaderboard {
}
extension GKLeaderboard {
}
