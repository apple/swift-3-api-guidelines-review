
@available(tvOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init(identifier: String?)
  @available(tvOS 8.0, *)
  init(identifier: String?, player: GKPlayer)
  @available(tvOS 6.0, *)
  class func reportAchievements(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(tvOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  init()
  @available(tvOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
}
