
@available(tvOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptionsWithCompletionHandler(_ completionHandler: (([GKAchievementDescription]?, NSError?) -> Void)?)
  var identifier: String? { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var hidden: Bool { get }
  @available(tvOS 6.0, *)
  var replayable: Bool { get }
  @available(tvOS 4.1, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImageWithCompletionHandler(_ completionHandler: ((UIImage?, NSError?) -> Void)?)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
