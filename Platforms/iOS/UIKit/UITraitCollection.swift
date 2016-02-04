
@available(iOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func containsTraitsInCollection(trait: UITraitCollection?) -> Bool
  /*not inherited*/ init(traitsFromCollections traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(iOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(iOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
protocol UITraitEnvironment : NSObjectProtocol {
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
