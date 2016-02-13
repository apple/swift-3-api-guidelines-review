
@available(OSX 10.9, *)
class SCNSkinner : Object, SecureCoding {
  var skeleton: SCNNode?
  @available(OSX 10.10, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [Value]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(OSX 10.9, *)
  var baseGeometry: SCNGeometry?
  @available(OSX 10.10, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(OSX 10.10, *)
  var boneInverseBindTransforms: [Value]? { get }
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
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
