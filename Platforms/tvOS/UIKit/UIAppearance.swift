
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(_ containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearanceForTraitCollection(_ trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearanceForTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
