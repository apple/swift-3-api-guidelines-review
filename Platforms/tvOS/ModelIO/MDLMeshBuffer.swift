
enum MDLMeshBufferType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case index
}
@available(tvOS 9.0, *)
class MDLMeshBufferMap : NSObject {
  init(bytes bytes: UnsafeMutablePointer<Void>, deallocator deallocator: (() -> Void)? = nil)
  var bytes: UnsafeMutablePointer<Void> { get }
}
@available(tvOS 9.0, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fill(_ data: NSData, offset offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(tvOS 9.0, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type type: MDLMeshBufferType, length length: Int)
  init(type type: MDLMeshBufferType, data data: NSData?)
  var data: NSData { get }
  @available(tvOS 9.0, *)
  func fill(_ data: NSData, offset offset: Int)
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
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffers(withSize sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(with data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBuffer(from zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBuffer(from zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
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
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
