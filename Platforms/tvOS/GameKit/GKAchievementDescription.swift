
@available(tvOS 4.1, *)
class GKAchievementDescription : Object, Coding, SecureCoding {
  class func loadAchievementDescriptions(completionHandler completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  var identifier: String? { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String? { get }
  var achievedDescription: String? { get }
  var unachievedDescription: String? { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(tvOS 6.0, *)
  var isReplayable: Bool { get }
  init()
  @available(tvOS 4.1, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 4.1, *)
  class func supportsSecureCoding() -> Bool
}
extension GKAchievementDescription {
  func loadImage(completionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
