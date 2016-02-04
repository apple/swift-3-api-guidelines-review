
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
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticVertexCrease: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticEdgeCrease: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticBoneWeights: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticBoneIndices: String
@available(OSX 10.8, *)
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(material: SCNMaterial, atIndex index: Int)
  func removeMaterialAtIndex(index: Int)
  func replaceMaterialAtIndex(index: Int, withMaterial material: SCNMaterial)
  func materialWithName(name: String) -> SCNMaterial?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  @available(OSX 10.10, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySourcesForSemantic(semantic: String) -> [SCNGeometrySource]
  @available(OSX 10.10, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElementAtIndex(elementIndex: Int) -> SCNGeometryElement
  @available(OSX 10.9, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(OSX 10.10, *)
  var subdivisionLevel: Int
  @available(OSX 10.10, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(OSX 10.10, *)
  var edgeCreasesSource: SCNGeometrySource?
  init()
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(OSX 10.8, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(OSX 10.9, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
  @available(OSX 10.8, *)
  var program: SCNProgram?
  @available(OSX 10.9, *)
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(OSX 10.9, *)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data: NSData, semantic: String, vectorCount: Int, floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  @available(OSX 10.11, *)
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
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data: NSData?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType)
}
