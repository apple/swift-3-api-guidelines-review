
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case triangles
  case triangleStrip
  case line
  case point
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
  func insertMaterial(_ material: SCNMaterial, at index: Int)
  func removeMaterial(at index: Int)
  func replaceMaterial(at index: Int, with material: SCNMaterial)
  func material(withName name: String) -> SCNMaterial?
  convenience init(sources sources: [SCNGeometrySource], elements elements: [SCNGeometryElement])
  @available(OSX 10.10, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySources(forSemantic semantic: String) -> [SCNGeometrySource]
  @available(OSX 10.10, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElement(at elementIndex: Int) -> SCNGeometryElement
  @available(OSX 10.9, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(OSX 10.10, *)
  var subdivisionLevel: Int
  @available(OSX 10.10, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(OSX 10.10, *)
  var edgeCreasesSource: SCNGeometrySource?
  @available(OSX 10.8, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimation(forKey key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func resumeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  func getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(OSX 10.8, *)
  func getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>, radius radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(OSX 10.9, *)
  func setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>)
  @available(OSX 10.8, *)
  var program: SCNProgram?
  @available(OSX 10.9, *)
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  func handleUnbinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data data: NSData, semantic semantic: String, vectorCount vectorCount: Int, floatComponents floatComponents: Bool, componentsPerVector componentsPerVector: Int, bytesPerComponent bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices vertices: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(normals normals: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count count: Int)
  @available(OSX 10.11, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat vertexFormat: MTLVertexFormat, semantic semantic: String, vertexCount vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: NSData { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data data: NSData?, primitiveType primitiveType: SCNGeometryPrimitiveType, primitiveCount primitiveCount: Int, bytesPerIndex bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices indices: [IndexType], primitiveType primitiveType: SCNGeometryPrimitiveType)
}
