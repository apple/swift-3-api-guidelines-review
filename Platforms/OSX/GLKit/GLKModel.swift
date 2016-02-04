
@available(OSX 10.11, *)
let kGLKModelErrorDomain: String
@available(OSX 10.11, *)
let kGLKModelErrorKey: String
@available(OSX 10.11, *)
class GLKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init()
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
class GLKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: GLKMeshBufferAllocator { get }
  var glBufferName: GLuint { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  init()
  @available(OSX 10.11, *)
  func fillData(data: NSData, offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class GLKSubmesh : NSObject {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(OSX 10.11, *)
class GLKMesh : NSObject {
  init(mesh: MDLMesh) throws
  class func newMeshesFromAsset(asset: MDLAsset, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [GLKMesh]
  var vertexCount: Int { get }
  var vertexBuffers: [GLKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [GLKSubmesh] { get }
  var name: String { get }
}
struct _GLKVertexAttributeParameters {
  var type: GLenum
  var size: GLint
  var normalized: GLboolean
  init()
  init(type: GLenum, size: GLint, normalized: GLboolean)
}
typealias GLKVertexAttributeParameters = _GLKVertexAttributeParameters
func GLKVertexAttributeParametersFromModelIO(vertexFormat: MDLVertexFormat) -> GLKVertexAttributeParameters
