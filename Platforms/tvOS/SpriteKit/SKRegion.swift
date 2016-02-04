
@available(tvOS 8.0, *)
class SKRegion : NSObject, NSCopying, NSCoding {
  var path: CGPath? { get }
  class func infiniteRegion() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(region: SKRegion) -> Self
  func regionByDifferenceFromRegion(region: SKRegion) -> Self
  func regionByIntersectionWithRegion(region: SKRegion) -> Self
  func containsPoint(point: CGPoint) -> Bool
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
