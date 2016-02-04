
@available(tvOS 9.0, *)
class UIRegion : Object, Copying, Coding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnionWith(region: UIRegion) -> Self
  func byDifferenceFrom(region: UIRegion) -> Self
  func byIntersectionWith(region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
