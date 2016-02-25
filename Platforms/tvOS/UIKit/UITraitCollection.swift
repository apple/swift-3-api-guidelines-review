
@available(tvOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  func containsTraitsInCollection(_ trait: UITraitCollection?) -> Bool
  /*not inherited*/ init(traitsFromCollections traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(tvOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(tvOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
protocol UITraitEnvironment : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
}
