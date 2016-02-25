
@available(iOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(iOS 7.0, *)
  class func loadLeaderboardSetsWithCompletionHandler(_ completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func loadLeaderboardsWithCompletionHandler(_ completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImageWithCompletionHandler(_ completionHandler: ((UIImage?, NSError?) -> Void)?)
}
