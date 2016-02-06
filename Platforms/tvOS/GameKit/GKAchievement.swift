
@available(tvOS 4.1, *)
class GKAchievement : Object, Coding, SecureCoding {
  class func loadAchievements(completionHandler completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func resetAchievementsWith(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  init(identifier: String?)
  @available(tvOS 8.0, *)
  init(identifier: String?, player: GKPlayer)
  @available(tvOS 6.0, *)
  class func report(achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  var identifier: String?
  var percentComplete: Double
  var isCompleted: Bool { get }
  @NSCopying var lastReportedDate: Date { get }
  @available(tvOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  init()
  @available(tvOS 4.1, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievement {
}
