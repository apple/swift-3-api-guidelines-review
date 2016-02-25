
enum MDLMeshBufferType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case index
}
@available(OSX 10.11, *)
class MDLMeshBufferMap : NSObject {
  init(bytes bytes: UnsafeMutablePointer<Void>, deallocator deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fill(_ data: NSData, offset offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(OSX 10.11, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type type: MDLMeshBufferType, length length: Int)
  init(type type: MDLMeshBufferType, data data: NSData?)
  var data: NSData { get }
  @available(OSX 10.11, *)
  func fill(_ data: NSData, offset offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  var length: Int { get }
  @available(OSX 10.11, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(OSX 10.11, *)
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(with data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(from zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBuffer(from zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
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
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
