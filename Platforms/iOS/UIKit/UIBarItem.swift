
@available(iOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder aDecoder: NSCoder)
  var enabled: Bool
  var title: String?
  var image: UIImage?
  @available(iOS 5.0, *)
  var landscapeImagePhone: UIImage?
  var imageInsets: UIEdgeInsets
  @available(iOS 5.0, *)
  var landscapeImagePhoneInsets: UIEdgeInsets
  var tag: Int
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  @available(iOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
