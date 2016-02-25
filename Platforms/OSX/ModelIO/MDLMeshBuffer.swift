
enum MDLMeshBufferType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
@available(OSX 10.11, *)
class MDLMeshBufferMap : NSObject {
  init(bytes bytes: UnsafeMutablePointer<Void>, deallocator deallocator: (() -> Void)?)
  var bytes: UnsafeMutablePointer<Void> { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fillData(_ data: NSData, offset offset: Int)
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
  func fillData(_ data: NSData, offset offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  var length: Int { get }
  @available(OSX 10.11, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(OSX 10.11, *)
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(_ sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(_ data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
  @available(OSX 10.11, *)
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newZoneForBuffersWithSize(_ sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(OSX 10.11, *)
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBufferWithData(_ data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(OSX 10.11, *)
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(OSX 10.11, *)
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
