
@available(iOS 4.1, *)
class GKScore : Object, Coding, SecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(iOS 8.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(iOS 7.0, *)
  var leaderboardIdentifier: String
  @available(iOS 5.0, *)
  var context: UInt64
  var date: Date { get }
  @available(iOS 8.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(iOS 5.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(iOS 6.0, *)
  class func report(scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
  @available(iOS 4.1, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
  @available(iOS, introduced=7.0, deprecated=8.0, message="use initWithLeaderboardIdentifier:player:")
  init(leaderboardIdentifier identifier: String, forPlayer playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use player")
  var playerID: String { get }
}
