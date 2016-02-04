
@available(tvOS 9.0, *)
let MTKModelErrorDomain: String
@available(tvOS 9.0, *)
let MTKModelErrorKey: String
@available(tvOS 9.0, *)
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(tvOS 9.0, *)
class MTKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  @available(tvOS 9.0, *)
  func fillData(data: NSData, offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class MTKSubmesh : NSObject {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
@available(tvOS 9.0, *)
class MTKMesh : NSObject {
  init(mesh: MDLMesh, device: MTLDevice) throws
  class func newMeshesFromAsset(asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]
  var vertexBuffers: [MTKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [MTKSubmesh] { get }
  var vertexCount: Int { get }
  var name: String
}
func MTKModelIOVertexDescriptorFromMetal(metalDescriptor: MTLVertexDescriptor) -> MDLVertexDescriptor
func MTKMetalVertexDescriptorFromModelIO(modelIODescriptor: MDLVertexDescriptor) -> MTLVertexDescriptor
func MTKModelIOVertexFormatFromMetal(vertexFormat: MTLVertexFormat) -> MDLVertexFormat
func MTKMetalVertexFormatFromModelIO(vertexFormat: MDLVertexFormat) -> MTLVertexFormat
