
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func whenContained(inInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  static func forTraitCollection(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func forTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
