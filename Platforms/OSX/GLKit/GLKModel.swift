
@available(OSX 10.11, *)
let kGLKModelErrorDomain: String
@available(OSX 10.11, *)
let kGLKModelErrorKey: String
@available(OSX 10.11, *)
class GLKMeshBufferAllocator : Object, MDLMeshBufferAllocator {
  init()
  @available(OSX 10.11, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newZoneForBuffers(withSize sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBuffer(with data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(OSX 10.11, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(OSX 10.11, *)
class GLKMeshBuffer : Object, MDLMeshBuffer {
  var length: Int { get }
  var allocator: GLKMeshBufferAllocator { get }
  var glBufferName: GLuint { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  init()
  @available(OSX 10.11, *)
  func fill(data: Data, offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class GLKSubmesh : Object {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(OSX 10.11, *)
class GLKMesh : Object {
  init(mesh: MDLMesh) throws
  class func newMeshes(from asset: MDLAsset, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [GLKMesh]
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
