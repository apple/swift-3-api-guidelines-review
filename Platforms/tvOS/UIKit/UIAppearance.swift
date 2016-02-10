
protocol UIAppearanceContainer : ObjectProtocol {
}
protocol UIAppearance : ObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearanceWhenContainedInInstances(ofClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearance(forTraitCollection trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearance(forTraitCollection trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
