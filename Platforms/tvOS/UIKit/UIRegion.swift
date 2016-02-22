
@available(tvOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {
  class func infinite() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnion(with region: UIRegion) -> Self
  func byDifference(from region: UIRegion) -> Self
  func byIntersection(with region: UIRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
