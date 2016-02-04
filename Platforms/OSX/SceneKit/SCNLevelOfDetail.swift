
@available(OSX 10.9, *)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
  init()
  @available(OSX 10.9, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
