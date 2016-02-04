
@available(iOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementsWithCompletionHandler(completionHandler: (([GKAchievement]?, NSError?) -> Void)?)
  class func resetAchievementsWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  init(identifier: String?)
  @available(iOS 8.0, *)
  init(identifier: String?, player: GKPlayer)
  @available(iOS 6.0, *)
  class func reportAchievements(achievements: [GKAchievement], withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  var identifier: String?
  var percentComplete: Double
  var completed: Bool { get }
  @NSCopying var lastReportedDate: NSDate { get }
  @available(iOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(iOS 8.0, *)
  var player: GKPlayer { get }
  init()
  @available(iOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(iOS, introduced=7.0, deprecated=8.0, message="use initWithIdentifier:player:")
  init(identifier: String?, forPlayer playerID: String)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player")
  var playerID: String { get }
}
