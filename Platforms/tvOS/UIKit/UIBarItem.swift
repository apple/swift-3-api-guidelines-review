
@available(tvOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder aDecoder: NSCoder)
  var enabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
