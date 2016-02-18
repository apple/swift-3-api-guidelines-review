
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
