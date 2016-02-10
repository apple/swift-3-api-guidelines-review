
@available(iOS 9.0, *)
class UIRegion : Object, Copying, Coding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnion(with region: UIRegion) -> Self
  func byDifference(from region: UIRegion) -> Self
  func byIntersection(with region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
