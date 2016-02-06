
@available(tvOS 8.0, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnionWith(region: SKRegion) -> Self
  func byDifferenceFrom(region: SKRegion) -> Self
  func byIntersectionWith(region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
