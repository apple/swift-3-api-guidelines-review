
@available(iOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(iOS 7.0, *)
  class func loadLeaderboardSets(completionHandler completionHandler: (([GKLeaderboardSet]?, NSError?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, NSError?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImage(completionHandler completionHandler: ((UIImage?, NSError?) -> Void)? = nil)
}
