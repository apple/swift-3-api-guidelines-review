
@available(OSX 10.11, *)
let MTKModelErrorDomain: String
@available(OSX 10.11, *)
let MTKModelErrorKey: String
@available(OSX 10.11, *)
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
  @available(OSX 10.11, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(OSX 10.11, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(OSX 10.11, *)
class MTKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  @available(OSX 10.11, *)
  func fillData(data: NSData, offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class MTKSubmesh : NSObject {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
@available(OSX 10.11, *)
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
