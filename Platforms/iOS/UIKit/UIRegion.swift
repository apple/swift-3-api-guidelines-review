
@available(iOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {
  class func infiniteRegion() -> Self
  init(radius: CGFloat)
  init(size: CGSize)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(region: UIRegion) -> Self
  func regionByDifferenceFromRegion(region: UIRegion) -> Self
  func regionByIntersectionWithRegion(region: UIRegion) -> Self
  func containsPoint(point: CGPoint) -> Bool
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
