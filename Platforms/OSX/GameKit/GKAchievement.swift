
@available(OSX 10.8, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(_ completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  init(identifier identifier: String?)
  @available(OSX 10.10, *)
  init(identifier identifier: String?, player player: GKPlayer)
  @available(OSX 10.8, *)
  class func reportAchievements(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(OSX 10.8, *)
  var showsCompletionBanner: Bool
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportAchievements:withCompletionHandler:")
  func reportAchievementWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use isHidden on the GKAchievementDescription class instead")
  var hidden: Bool { get }
}
