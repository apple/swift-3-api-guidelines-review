
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeKey: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeBoundingBox: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeConvexHull: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeConcavePolyhedron: String
@available(OSX 10.10, *)
let SCNPhysicsShapeKeepAsCompoundKey: String
@available(OSX 10.10, *)
let SCNPhysicsShapeScaleKey: String
@available(OSX 10.10, *)
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [String : AnyObject]?)
  convenience init(node: SCNNode, options: [String : AnyObject]?)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  @available(OSX 10.11, *)
  var options: [String : AnyObject]? { get }
  @available(OSX 10.11, *)
  var sourceObject: AnyObject { get }
  @available(OSX 10.11, *)
  var transforms: [NSValue]? { get }
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
