
@available(OSX 10.8, *)
class GKAchievementDescription : Object, Coding, SecureCoding {
  class func loadAchievementDescriptions(completionHandler completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  var identifier: String? { get }
  @available(OSX 10.8, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(OSX 10.8, *)
  var isReplayable: Bool { get }
  init()
  @available(OSX 10.8, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  @available(OSX 10.8, *)
  var image: NSImage? { get }
  func loadImage(completionHandler completionHandler: ((NSImage?, Error?) -> Void)? = nil)
  class func incompleteAchievementImage() -> NSImage
  class func placeholderCompletedAchievementImage() -> NSImage
}
