
@available(tvOS 8.0, *)
class SCNSkinner : Object, SecureCoding {
  var skeleton: SCNNode?
  @available(tvOS 8.0, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [Value]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(tvOS 8.0, *)
  var baseGeometry: SCNGeometry?
  @available(tvOS 8.0, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(tvOS 8.0, *)
  var boneInverseBindTransforms: [Value]? { get }
  @available(tvOS 8.0, *)
  var bones: [SCNNode] { get }
  @available(tvOS 8.0, *)
  var boneWeights: SCNGeometrySource { get }
  @available(tvOS 8.0, *)
  var boneIndices: SCNGeometrySource { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
