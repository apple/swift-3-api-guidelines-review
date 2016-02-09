
@available(iOS 2.0, *)
class UIBarItem : Object, Coding, UIAppearance {
  init()
  init?(coder aDecoder: Coder)
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  @available(iOS 5.0, *)
  var landscapeImagePhone: UIImage?
  var imageInsets: UIEdgeInsets
  @available(iOS 5.0, *)
  var landscapeImagePhoneInsets: UIEdgeInsets
  var tag: Int
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  @available(iOS 2.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearanceWhenContainedInInstancesOf(classes containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearance(forTraitCollection trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
