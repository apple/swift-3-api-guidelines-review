
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue rawValue: Int)
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
@available(iOS 8.0, *)
let SCNGeometrySourceSemanticVertexCrease: String
@available(iOS 8.0, *)
let SCNGeometrySourceSemanticEdgeCrease: String
@available(iOS 8.0, *)
let SCNGeometrySourceSemanticBoneWeights: String
@available(iOS 8.0, *)
let SCNGeometrySourceSemanticBoneIndices: String
@available(iOS 8.0, *)
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(_ material: SCNMaterial, atIndex index: Int)
  func removeMaterialAtIndex(_ index: Int)
  func replaceMaterialAtIndex(_ index: Int, withMaterial material: SCNMaterial)
  func materialWithName(_ name: String) -> SCNMaterial?
  convenience init(sources sources: [SCNGeometrySource], elements elements: [SCNGeometryElement])
  @available(iOS 8.0, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySourcesForSemantic(_ semantic: String) -> [SCNGeometrySource]
  @available(iOS 8.0, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElementAtIndex(_ elementIndex: Int) -> SCNGeometryElement
  @available(iOS 8.0, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(iOS 8.0, *)
  var subdivisionLevel: Int
  @available(iOS 8.0, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(iOS 8.0, *)
  var edgeCreasesSource: SCNGeometrySource?
  @available(iOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  func getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(iOS 8.0, *)
  func getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>, radius radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 8.0, *)
  func setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>)
  @available(iOS 8.0, *)
  var program: SCNProgram?
  @available(iOS 8.0, *)
  func handleBindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  func handleUnbindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data data: NSData, semantic semantic: String, vectorCount vectorCount: Int, floatComponents floatComponents: Bool, componentsPerVector componentsPerVector: Int, bytesPerComponent bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices vertices: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(normals normals: UnsafePointer<SCNVector3>, count count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count count: Int)
  @available(iOS 9.0, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat vertexFormat: MTLVertexFormat, semantic semantic: String, vertexCount vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: NSData { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data data: NSData?, primitiveType primitiveType: SCNGeometryPrimitiveType, primitiveCount primitiveCount: Int, bytesPerIndex bytesPerIndex: Int)
  var data: NSData { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices indices: [IndexType], primitiveType primitiveType: SCNGeometryPrimitiveType)
}
