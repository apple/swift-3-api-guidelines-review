
@available(iOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init?(coder aDecoder: NSCoder)
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
  func setTitleTextAttributes(_ attributes: [String : AnyObject]?, for state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributes(for state: UIControlState) -> [String : AnyObject]?
  @available(iOS 2.0, *)
  func encode(with aCoder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func whenContained(inInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func forTraitCollection(_ trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func forTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
