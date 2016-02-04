
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
