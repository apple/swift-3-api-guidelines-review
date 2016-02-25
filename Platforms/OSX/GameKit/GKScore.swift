
@available(OSX 10.8, *)
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(OSX 10.10, *)
  init(leaderboardIdentifier identifier: String, player player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(OSX 10.10, *)
  var leaderboardIdentifier: String
  @available(OSX 10.8, *)
  var context: UInt64
  var date: NSDate { get }
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(OSX 10.8, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(OSX 10.8, *)
  class func reportScores(_ scores: [GKScore], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKScore {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportScores:withCompletionhandler: instead")
  func reportScoreWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use initWithLeaderboardIdentifier: instead")
  init(category category: String?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use player")
  var playerID: String { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use leaderboardIdentifier instead")
  var category: String?
}
