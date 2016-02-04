
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
