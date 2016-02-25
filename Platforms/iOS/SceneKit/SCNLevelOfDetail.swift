
@available(iOS 8.0, *)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
