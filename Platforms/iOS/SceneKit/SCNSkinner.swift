
@available(iOS 8.0, *)
class SCNSkinner : NSObject, NSSecureCoding {
  var skeleton: SCNNode?
  @available(iOS 8.0, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)
  @available(iOS 8.0, *)
  var baseGeometry: SCNGeometry?
  @available(iOS 8.0, *)
  var baseGeometryBindTransform: SCNMatrix4
  @available(iOS 8.0, *)
  var boneInverseBindTransforms: [NSValue]? { get }
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
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
