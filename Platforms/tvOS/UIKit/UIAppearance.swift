
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
