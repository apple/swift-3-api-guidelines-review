
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
@available(OSX 10.11, *)
class MDLMeshBufferMap : NSObject {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)?)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
@available(OSX 10.11, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fillData(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(OSX 10.11, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: NSData?)
  var data: NSData { get }
  init()
  @available(OSX 10.11, *)
  func fillData(data: NSData, offset: Int)
  @available(OSX 10.11, *)
  func map() -> MDLMeshBufferMap
  @available(OSX 10.11, *)
  var length: Int { get }
  @available(OSX 10.11, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(OSX 10.11, *)
  var type: MDLMeshBufferType { get }
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(OSX 10.11, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
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
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
