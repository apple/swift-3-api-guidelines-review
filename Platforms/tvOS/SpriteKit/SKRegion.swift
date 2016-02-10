
@available(tvOS 8.0, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnion(withRegion region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(withRegion region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
