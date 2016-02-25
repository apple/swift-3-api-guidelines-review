
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(_ containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearanceForTraitCollection(_ trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearanceForTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
