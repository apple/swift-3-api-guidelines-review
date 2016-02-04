
@available(iOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(iOS 7.0, *)
  class func loadLeaderboardSetsWithCompletionHandler(completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
  init()
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
}
