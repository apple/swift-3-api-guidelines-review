
@available(tvOS 2.0, *)
class UIBarItem : Object, Coding, UIAppearance {
  init()
  init?(coder aDecoder: Coder)
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]? = [:], for state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributes(for state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 2.0, *)
  func encode(with aCoder: Coder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func whenContained(inInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func forTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func forTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
