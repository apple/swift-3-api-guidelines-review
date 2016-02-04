
@available(iOS 9.0, *)
let kGLKModelErrorDomain: String
@available(iOS 9.0, *)
let kGLKModelErrorKey: String
@available(iOS 9.0, *)
class GLKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init()
  @available(iOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(iOS 9.0, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(iOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(iOS 9.0, *)
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(iOS 9.0, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(iOS 9.0, *)
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
@available(iOS 9.0, *)
class GLKMeshBuffer : NSObject, MDLMeshBuffer {
  var length: Int { get }
  var allocator: GLKMeshBufferAllocator { get }
  var glBufferName: GLuint { get }
  var offset: Int { get }
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  init()
  @available(iOS 9.0, *)
  func fillData(data: NSData, offset: Int)
  @available(iOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class GLKSubmesh : NSObject {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(iOS 9.0, *)
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
