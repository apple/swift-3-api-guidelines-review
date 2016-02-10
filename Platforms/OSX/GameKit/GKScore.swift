
@available(OSX 10.8, *)
class GKScore : Object, Coding, SecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(OSX 10.10, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(OSX 10.10, *)
  var leaderboardIdentifier: String
  @available(OSX 10.8, *)
  var context: UInt64
  var date: Date { get }
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(OSX 10.8, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(OSX 10.8, *)
  class func report(scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
  @available(OSX 10.8, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportScores:withCompletionhandler: instead")
  func report(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use initWithLeaderboardIdentifier: instead")
  init(category: String?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use player")
  var playerID: String { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use leaderboardIdentifier instead")
  var category: String?
}
