
@available(OSX 10.9, *)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
