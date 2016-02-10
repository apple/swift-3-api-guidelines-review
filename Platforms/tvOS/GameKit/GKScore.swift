
@available(tvOS 4.1, *)
class GKScore : Object, Coding, SecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(tvOS 8.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(tvOS 7.0, *)
  var leaderboardIdentifier: String
  @available(tvOS 5.0, *)
  var context: UInt64
  var date: Date { get }
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(tvOS 5.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(tvOS 6.0, *)
  class func report(scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
  @available(tvOS 4.1, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
}
