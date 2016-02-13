
@available(tvOS 9.0, *)
let MTKModelErrorDomain: String
@available(tvOS 9.0, *)
let MTKModelErrorKey: String
@available(tvOS 9.0, *)
class MTKMeshBufferAllocator : Object, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffers(withSize sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(with data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(tvOS 9.0, *)
class MTKMeshBuffer : Object, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  @available(tvOS 9.0, *)
  func fill(data: Data, offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class MTKSubmesh : Object {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
@available(tvOS 9.0, *)
class MTKMesh : Object {
  init(mesh: MDLMesh, device: MTLDevice) throws
  class func newMeshes(from asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]
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
