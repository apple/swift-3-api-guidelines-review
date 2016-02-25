
@available(iOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptions(completionHandler completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)? = nil)
  var identifier: String? { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(iOS 6.0, *)
  var isReplayable: Bool { get }
  @available(iOS 4.1, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImage(completionHandler completionHandler: ((UIImage?, NSError?) -> Void)? = nil)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
