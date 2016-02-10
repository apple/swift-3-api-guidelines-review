
@available(tvOS 9.0, *)
let kGLKModelErrorDomain: String
@available(tvOS 9.0, *)
let kGLKModelErrorKey: String
@available(tvOS 9.0, *)
class GLKMeshBufferAllocator : Object, MDLMeshBufferAllocator {
  init()
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffers(withSize sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(withData data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(tvOS 9.0, *)
class GLKMeshBuffer : Object, MDLMeshBuffer {
  var length: Int { get }
  var allocator: GLKMeshBufferAllocator { get }
  var glBufferName: GLuint { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  init()
  @available(tvOS 9.0, *)
  func fill(data: Data, offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GLKSubmesh : Object {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(tvOS 9.0, *)
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
