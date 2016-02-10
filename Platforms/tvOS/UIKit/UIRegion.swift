
@available(tvOS 9.0, *)
class UIRegion : Object, Copying, Coding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnion(withRegion region: UIRegion) -> Self
  func byDifference(from region: UIRegion) -> Self
  func byIntersection(withRegion region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
