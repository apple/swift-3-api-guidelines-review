
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
