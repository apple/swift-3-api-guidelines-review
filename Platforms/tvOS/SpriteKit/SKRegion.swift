
@available(tvOS 8.0, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnion(region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
