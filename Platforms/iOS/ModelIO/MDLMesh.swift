
@available(iOS 9.0, *)
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutablePointer<Void>
  var stride: Int
  var format: MDLVertexFormat
  init()
}
@available(iOS 9.0, *)
class MDLMesh : MDLObject {
  init(vertexBuffer: MDLMeshBuffer, vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  init(vertexBuffers: [MDLMeshBuffer], vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  func vertexAttributeData(forAttributeNamed name: String) -> MDLVertexAttributeData?
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  @NSCopying var vertexDescriptor: MDLVertexDescriptor
  var vertexCount: Int { get }
  var vertexBuffers: [MDLMeshBuffer] { get }
  var submeshes: NSMutableArray { get }
  init()
}
extension MDLMesh {
  func addAttribute(name name: String, format: MDLVertexFormat)
  func addNormals(withAttributeNamed attributeName: String?, creaseThreshold: Float)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  func makeVerticesUnique()
}
extension MDLMesh {
  class func newEllipsoid(withRadii radii: vector_float3, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, hemisphere: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newCylinder(withHeight height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipticalCone(withHeight height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newIcosahedron(withRadius radius: Float, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newSubdividedMesh(mesh: MDLMesh, submeshIndex: Int, subdivisionLevels: Int) -> Self?
}
extension MDLMesh {
  func generateAmbientOcclusionTexture(size textureSize: vector_int2, raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionTexture(quality bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColors(raysPerSample raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColors(quality bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTexture(textureSize textureSize: vector_int2, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTexture(quality bakeQuality: Float, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLights(toConsider lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}
