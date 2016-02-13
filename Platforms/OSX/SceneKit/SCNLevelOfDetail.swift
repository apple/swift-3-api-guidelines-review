
@available(OSX 10.9, *)
class SCNLevelOfDetail : Object, Copying, SecureCoding {
  convenience init(geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
  init()
  @available(OSX 10.9, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
