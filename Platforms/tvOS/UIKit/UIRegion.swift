
@available(tvOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {
  class func infinite() -> Self
  init(radius radius: CGFloat)
  init(size size: CGSize)
  func inverse() -> Self
  func byUnion(with region: UIRegion) -> Self
  func byDifference(from region: UIRegion) -> Self
  func byIntersection(with region: UIRegion) -> Self
  func contains(_ point: CGPoint) -> Bool
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
