
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
  func insertMaterial(_ material: SCNMaterial, at index: Int)
  func removeMaterial(at index: Int)
  func replaceMaterial(at index: Int, with material: SCNMaterial)
  func material(withName name: String) -> SCNMaterial?
  convenience init(sources sources: [SCNGeometrySource], elements elements: [SCNGeometryElement])
  @available(tvOS 8.0, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySources(forSemantic semantic: String) -> [SCNGeometrySource]
  @available(tvOS 8.0, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElement(at elementIndex: Int) -> SCNGeometryElement
  @available(tvOS 8.0, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(tvOS 8.0, *)
  var subdivisionLevel: Int
  @available(tvOS 8.0, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(tvOS 8.0, *)
  var edgeCreasesSource: SCNGeometrySource?
  @available(tvOS 8.0, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  func getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(tvOS 8.0, *)
  func getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>, radius radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 8.0, *)
  func setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>)
  @available(tvOS 8.0, *)
  var program: SCNProgram?
  @available(tvOS 8.0, *)
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(tvOS 8.0, *)
  func handleUnbinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(tvOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data data: NSData, semantic semantic: String, vectorCount vectorCount: Int, floatComponents floatComponents: Bool, componentsPerVector componentsPerVector: Int, bytesPerComponent bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices vertices: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(normals normals: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count count: Int)
  @available(tvOS 9.0, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat vertexFormat: MTLVertexFormat, semantic semantic: String, vertexCount vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: NSData { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data data: NSData?, primitiveType primitiveType: SCNGeometryPrimitiveType, primitiveCount primitiveCount: Int, bytesPerIndex bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices indices: [IndexType], primitiveType primitiveType: SCNGeometryPrimitiveType)
}
