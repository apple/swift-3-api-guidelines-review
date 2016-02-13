
@available(OSX 10.8, *)
class GKAchievement : Object, Coding, SecureCoding {
  class func loadAchievements(completionHandler completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func resetAchievements(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  init(identifier: String?)
  @available(OSX 10.10, *)
  init(identifier: String?, player: GKPlayer)
  @available(OSX 10.8, *)
  class func report(achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  var identifier: String?
  var percentComplete: Double
  var isCompleted: Bool { get }
  @NSCopying var lastReportedDate: Date { get }
  @available(OSX 10.8, *)
  var showsCompletionBanner: Bool
  @available(OSX 10.10, *)
  var player: GKPlayer { get }
  init()
  @available(OSX 10.8, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use +reportAchievements:withCompletionHandler:")
  func report(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use isHidden on the GKAchievementDescription class instead")
  var isHidden: Bool { get }
}
