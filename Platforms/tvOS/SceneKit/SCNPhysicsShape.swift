
@available(tvOS 8.0, *)
let SCNPhysicsShapeTypeKey: String
@available(tvOS 8.0, *)
let SCNPhysicsShapeTypeBoundingBox: String
@available(tvOS 8.0, *)
let SCNPhysicsShapeTypeConvexHull: String
@available(tvOS 8.0, *)
let SCNPhysicsShapeTypeConcavePolyhedron: String
@available(tvOS 8.0, *)
let SCNPhysicsShapeKeepAsCompoundKey: String
@available(tvOS 8.0, *)
let SCNPhysicsShapeScaleKey: String
@available(tvOS 8.0, *)
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [String : AnyObject]?)
  convenience init(node: SCNNode, options: [String : AnyObject]?)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  @available(tvOS 9.0, *)
  var options: [String : AnyObject]? { get }
  @available(tvOS 9.0, *)
  var sourceObject: AnyObject { get }
  @available(tvOS 9.0, *)
  var transforms: [NSValue]? { get }
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
