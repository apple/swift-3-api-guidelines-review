
@available(OSX 10.8, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init(identifier: String?)
  @available(OSX 10.10, *)
  init(identifier: String?, player: GKPlayer)
  @available(OSX 10.8, *)
  class func reportAchievements(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(OSX 10.8, *)
  var showsCompletionBanner: Bool
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  init()
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportAchievements:withCompletionHandler:")
  func reportAchievementWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use isHidden on the GKAchievementDescription class instead")
  var hidden: Bool { get }
}
