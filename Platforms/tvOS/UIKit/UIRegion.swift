
@available(tvOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {
  class func infiniteRegion() -> Self
  init(radius radius: CGFloat)
  init(size size: CGSize)
  func inverseRegion() -> Self
  func regionByUnionWithRegion(_ region: UIRegion) -> Self
  func regionByDifferenceFromRegion(_ region: UIRegion) -> Self
  func regionByIntersectionWithRegion(_ region: UIRegion) -> Self
  func containsPoint(_ point: CGPoint) -> Bool
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
