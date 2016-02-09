
protocol UIAppearanceContainer : ObjectProtocol {
}
protocol UIAppearance : ObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearanceWhenContainedInInstancesOf(classes containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearanceFor(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearance(forTraitCollection trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
