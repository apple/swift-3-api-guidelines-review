
@available(OSX 10.11, *)
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutablePointer<Void>
  var stride: Int
  var format: MDLVertexFormat
}
@available(OSX 10.11, *)
class MDLMesh : MDLObject {
  init(vertexBuffer vertexBuffer: MDLMeshBuffer, vertexCount vertexCount: Int, descriptor descriptor: MDLVertexDescriptor, submeshes submeshes: [MDLSubmesh])
  init(vertexBuffers vertexBuffers: [MDLMeshBuffer], vertexCount vertexCount: Int, descriptor descriptor: MDLVertexDescriptor, submeshes submeshes: [MDLSubmesh])
  func vertexAttributeDataForAttributeNamed(_ name: String) -> MDLVertexAttributeData?
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  @NSCopying var vertexDescriptor: MDLVertexDescriptor
  var vertexCount: Int { get }
  var vertexBuffers: [MDLMeshBuffer] { get }
  var submeshes: NSMutableArray { get }
}
extension MDLMesh {
  func addAttributeWithName(_ name: String, format format: MDLVertexFormat)
  func addNormalsWithAttributeNamed(_ attributeName: String?, creaseThreshold creaseThreshold: Float)
  func addTangentBasisForTextureCoordinateAttributeNamed(_ textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)
  func addTangentBasisForTextureCoordinateAttributeNamed(_ textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  func makeVerticesUnique()
}
extension MDLMesh {
  class func newEllipsoidWithRadii(_ radii: vector_float3, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, hemisphere hemisphere: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newCylinderWithHeight(_ height: Float, radii radii: vector_float2, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipticalConeWithHeight(_ height: Float, radii radii: vector_float2, radialSegments radialSegments: Int, verticalSegments verticalSegments: Int, geometryType geometryType: MDLGeometryType, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newIcosahedronWithRadius(_ radius: Float, inwardNormals inwardNormals: Bool, allocator allocator: MDLMeshBufferAllocator?) -> Self
  class func newSubdividedMesh(_ mesh: MDLMesh, submeshIndex submeshIndex: Int, subdivisionLevels subdivisionLevels: Int) -> Self?
}
extension MDLMesh {
  func generateAmbientOcclusionTextureWithSize(_ textureSize: vector_int2, raysPerSample raysPerSample: Int, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionTextureWithQuality(_ bakeQuality: Float, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithRaysPerSample(_ raysPerSample: Int, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColorsWithQuality(_ bakeQuality: Float, attenuationFactor attenuationFactor: Float, objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTextureWithTextureSize(_ textureSize: vector_int2, lightsToConsider lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTextureWithQuality(_ bakeQuality: Float, lightsToConsider lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLightsToConsider(_ lightsToConsider: [MDLLight], objectsToConsider objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}
