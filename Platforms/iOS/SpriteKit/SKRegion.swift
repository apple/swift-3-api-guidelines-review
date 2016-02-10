
@available(iOS 8.0, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnion(with region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(with region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
