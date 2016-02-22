
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case index
}
@available(tvOS 9.0, *)
class MDLMeshBufferMap : NSObject {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
@available(tvOS 9.0, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fill(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(tvOS 9.0, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: NSData?)
  var data: NSData { get }
  init()
  @available(tvOS 9.0, *)
  func fill(data: NSData, offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  var length: Int { get }
  @available(tvOS 9.0, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(tvOS 9.0, *)
  var type: MDLMeshBufferType { get }
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(with data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBuffer(from zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
  init()
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(with data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBuffer(from zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
