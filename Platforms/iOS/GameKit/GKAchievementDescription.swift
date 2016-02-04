
@available(iOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptionsWithCompletionHandler(completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)?)
  var identifier: String? { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var hidden: Bool { get }
  @available(iOS 6.0, *)
  var replayable: Bool { get }
  init()
  @available(iOS 4.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImageWithCompletionHandler(completionHandler: ((UIImage?, NSError?) -> Void)?)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
