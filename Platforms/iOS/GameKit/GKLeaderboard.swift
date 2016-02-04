
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
@available(iOS 4.1, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(iOS 7.0, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var loading: Bool { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  init()
  @available(iOS 8.0, *)
  init(players: [GKPlayer])
  func loadScoresWithCompletionHandler(completionHandler: (([GKScore]?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  class func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
}
extension GKLeaderboard {
  @available(iOS, introduced=4.1, deprecated=8.0, message="Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
}
extension GKLeaderboard {
  @available(iOS 7.0, *)
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
}
