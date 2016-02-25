
@available(tvOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(_ completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  init(identifier identifier: String?)
  @available(tvOS 8.0, *)
  init(identifier identifier: String?, player player: GKPlayer)
  @available(tvOS 6.0, *)
  class func reportAchievements(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(tvOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  @available(tvOS 4.1, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
}
