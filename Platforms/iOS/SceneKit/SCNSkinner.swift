
@available(iOS 8.0, *)
class SCNSkinner : Object, SecureCoding {
  var skeleton: SCNNode?
  @available(iOS 8.0, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [Value]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(iOS 8.0, *)
  var baseGeometry: SCNGeometry?
  @available(iOS 8.0, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(iOS 8.0, *)
  var boneInverseBindTransforms: [Value]? { get }
  @available(iOS 8.0, *)
  var bones: [SCNNode] { get }
  @available(iOS 8.0, *)
  var boneWeights: SCNGeometrySource { get }
  @available(iOS 8.0, *)
  var boneIndices: SCNGeometrySource { get }
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
