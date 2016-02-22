
@available(OSX 10.9, *)
class SCNSkinner : NSObject, NSSecureCoding {
  var skeleton: SCNNode?
  @available(OSX 10.10, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(OSX 10.9, *)
  var baseGeometry: SCNGeometry?
  @available(OSX 10.10, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(OSX 10.10, *)
  var boneInverseBindTransforms: [NSValue]? { get }
  @available(OSX 10.10, *)
  var bones: [SCNNode] { get }
  @available(OSX 10.10, *)
  var boneWeights: SCNGeometrySource { get }
  @available(OSX 10.10, *)
  var boneIndices: SCNGeometrySource { get }
  init()
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
