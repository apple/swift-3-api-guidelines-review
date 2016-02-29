
@available(tvOS 9.0, *)
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutablePointer<Void>
  var stride: Int
  var format: MDLVertexFormat
}
@available(tvOS 9.0, *)
class MDLMesh : MDLObject {
  init(vertexBuffer vertexBuffer: MDLMeshBuffer, vertexCount vertexCount: Int, descriptor descriptor: MDLVertexDescriptor, submeshes submeshes: [MDLSubmesh])
  init(vertexBuffers vertexBuffers: [MDLMeshBuffer], vertexCount vertexCount: Int, descriptor descriptor: MDLVertexDescriptor, submeshes submeshes: [MDLSubmesh])
  func vertexAttributeData(forAttributeNamed name: String) -> MDLVertexAttributeData?
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  @NSCopying var vertexDescriptor: MDLVertexDescriptor
  var vertexCount: Int { get }
  var vertexBuffers: [MDLMeshBuffer] { get }
  var submeshes: NSMutableArray { get }
}
extension MDLMesh {
  func addAttribute(withName name: String, format format: MDLVertexFormat)
  func addNormals(withAttributeNamed attributeName: String?, creaseThreshold creaseThreshold: Float)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  func makeVerticesUnique()
}
extension MDLMesh {
  class func newEllipsoid(withRadii radii: vector_float3, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, hemisphere hemisphere: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newCylinder(withHeight height: Float, radii radii: vector_float2, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipticalCone(withHeight height: Float, radii radii: vector_float2, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newIcosahedron(withRadius radius: Float, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newSubdividedMesh(_ mesh: MDLMesh, submeshIndex submeshIndex: Int, subdivisionLevels subdivisionLevels: Int) -> Self?
}
extension MDLMesh {
  func generateAmbientOcclusionTexture(withSize textureSize: vector_int2, raysPerSample raysPerSample: Int, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionTexture(withQuality bakeQuality: Float, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColors(withRaysPerSample raysPerSample: Int, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColors(withQuality bakeQuality: Float, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTexture(withTextureSize textureSize: vector_int2, lightsToConsider lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTexture(withQuality bakeQuality: Float, lightsToConsider lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLights(toConsider lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}
