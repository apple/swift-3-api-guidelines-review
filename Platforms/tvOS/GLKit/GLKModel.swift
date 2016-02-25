
@available(tvOS 9.0, *)
let kGLKModelErrorDomain: String
@available(tvOS 9.0, *)
let kGLKModelErrorKey: String
@available(tvOS 9.0, *)
class GLKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  @available(tvOS 9.0, *)
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(with data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(tvOS 9.0, *)
class GLKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: GLKMeshBufferAllocator { get }
  var glBufferName: GLuint { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  @available(tvOS 9.0, *)
  func fill(_ data: NSData, offset offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GLKSubmesh : NSObject {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(tvOS 9.0, *)
class GLKMesh : NSObject {
  init(mesh mesh: MDLMesh) throws
  class func newMeshes(from asset: MDLAsset, sourceMeshes sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [GLKMesh]
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
  init(type type: GLenum, size size: GLint, normalized normalized: GLboolean)
}
typealias GLKVertexAttributeParameters = _GLKVertexAttributeParameters
func GLKVertexAttributeParametersFromModelIO(_ vertexFormat: MDLVertexFormat) -> GLKVertexAttributeParameters
