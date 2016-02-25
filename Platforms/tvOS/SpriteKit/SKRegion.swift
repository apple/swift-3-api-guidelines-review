
@available(tvOS 8.0, *)
class SKRegion : NSObject, NSCopying, NSCoding {
  var path: CGPath? { get }
  class func infiniteRegion() -> Self
  init(radius radius: Float)
  init(size size: CGSize)
  init(path path: CGPath)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(_ region: SKRegion) -> Self
  func regionByDifferenceFromRegion(_ region: SKRegion) -> Self
  func regionByIntersectionWithRegion(_ region: SKRegion) -> Self
  func containsPoint(_ point: CGPoint) -> Bool
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
