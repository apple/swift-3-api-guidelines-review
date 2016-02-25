
@available(OSX 10.8, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptionsWithCompletionHandler(_ completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)?)
  var identifier: String? { get }
  @available(OSX 10.8, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var hidden: Bool { get }
  @available(OSX 10.8, *)
  var replayable: Bool { get }
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  @available(OSX 10.8, *)
  var image: NSImage? { get }
  func loadImageWithCompletionHandler(_ completionHandler: ((NSImage?, NSError?) -> Void)?)
  class func incompleteAchievementImage() -> NSImage
  class func placeholderCompletedAchievementImage() -> NSImage
}
