
@available(OSX 10.11, *)
let MTKModelErrorDomain: String
@available(OSX 10.11, *)
let MTKModelErrorKey: String
@available(OSX 10.11, *)
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init(device device: MTLDevice)
  var device: MTLDevice { get }
  @available(OSX 10.11, *)
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBuffer(with data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(OSX 10.11, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(OSX 10.11, *)
class MTKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: MTKMeshBufferAllocator { get }
  var buffer: MTLBuffer { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func fill(_ data: NSData, offset offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
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
  init(mesh mesh: MDLMesh, device device: MTLDevice) throws
  class func newMeshes(from asset: MDLAsset, device device: MTLDevice, sourceMeshes sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]
  var vertexBuffers: [MTKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [MTKSubmesh] { get }
  var vertexCount: Int { get }
  var name: String
}
func MTKModelIOVertexDescriptorFromMetal(_ metalDescriptor: MTLVertexDescriptor) -> MDLVertexDescriptor
func MTKMetalVertexDescriptorFromModelIO(_ modelIODescriptor: MDLVertexDescriptor) -> MTLVertexDescriptor
func MTKModelIOVertexFormatFromMetal(_ vertexFormat: MTLVertexFormat) -> MDLVertexFormat
func MTKMetalVertexFormatFromModelIO(_ vertexFormat: MDLVertexFormat) -> MTLVertexFormat
