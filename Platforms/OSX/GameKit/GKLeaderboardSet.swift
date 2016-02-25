
@available(OSX 10.10, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(OSX 10.10, *)
  class func loadLeaderboardSetsWithCompletionHandler(_ completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func loadLeaderboardsWithCompletionHandler(_ completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImageWithCompletionHandler(_ completionHandler: ((NSImage?, NSError?) -> Void)?)
}
