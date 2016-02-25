
@available(tvOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init?(coder aDecoder: NSCoder)
  var enabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributesForState(_ state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(_ containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearanceForTraitCollection(_ trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearanceForTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
