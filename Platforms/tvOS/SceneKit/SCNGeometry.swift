
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Triangles
  case TriangleStrip
  case Line
  case Point
}
let SCNGeometrySourceSemanticVertex: String
let SCNGeometrySourceSemanticNormal: String
let SCNGeometrySourceSemanticColor: String
let SCNGeometrySourceSemanticTexcoord: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticVertexCrease: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticEdgeCrease: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticBoneWeights: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticBoneIndices: String
@available(tvOS 8.0, *)
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(material: SCNMaterial, atIndex index: Int)
  func removeMaterialAtIndex(index: Int)
  func replaceMaterialAtIndex(index: Int, withMaterial material: SCNMaterial)
  func materialWithName(name: String) -> SCNMaterial?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  @available(tvOS 8.0, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySourcesForSemantic(semantic: String) -> [SCNGeometrySource]
  @available(tvOS 8.0, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElementAtIndex(elementIndex: Int) -> SCNGeometryElement
  @available(tvOS 8.0, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(tvOS 8.0, *)
  var subdivisionLevel: Int
  @available(tvOS 8.0, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(tvOS 8.0, *)
  var edgeCreasesSource: SCNGeometrySource?
  init()
  @available(tvOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(tvOS 8.0, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 8.0, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
  @available(tvOS 8.0, *)
  var program: SCNProgram?
  @available(tvOS 8.0, *)
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(tvOS 8.0, *)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(tvOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data: NSData, semantic: String, vectorCount: Int, floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  @available(tvOS 9.0, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat: MTLVertexFormat, semantic: String, vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: NSData { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data: NSData?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType)
}
