
protocol UIAppearanceContainer : ObjectProtocol {
}
protocol UIAppearance : ObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearanceWhenContainedInInstancesOf(classes containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
