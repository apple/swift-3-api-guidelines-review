
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case index
}
@available(OSX 10.11, *)
class MDLMeshBufferMap : Object {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
@available(OSX 10.11, *)
protocol MDLMeshBuffer : ObjectProtocol, Copying {
  func fill(data: Data, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(OSX 10.11, *)
class MDLMeshBufferData : Object, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: Data?)
  var data: Data { get }
  init()
  @available(OSX 10.11, *)
  func fill(data: Data, offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  var length: Int { get }
  @available(OSX 10.11, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(OSX 10.11, *)
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
protocol MDLMeshBufferZone : ObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBufferAllocator : ObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffers(withSize sizes: [Number], andType types: [Number]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(with data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBuffer(from zone: MDLMeshBufferZone?, data: Data, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : Object, MDLMeshBufferAllocator {
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
class MDLMeshBufferZoneDefault : Object, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
