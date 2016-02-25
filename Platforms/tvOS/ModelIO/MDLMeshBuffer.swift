
enum MDLMeshBufferType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
@available(tvOS 9.0, *)
class MDLMeshBufferMap : NSObject {
  init(bytes bytes: UnsafeMutablePointer<Void>, deallocator deallocator: (() -> Void)?)
  var bytes: UnsafeMutablePointer<Void> { get }
}
@available(tvOS 9.0, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fillData(_ data: NSData, offset offset: Int)
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
  func fillData(_ data: NSData, offset offset: Int)
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  var length: Int { get }
  @available(tvOS 9.0, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(tvOS 9.0, *)
  var type: MDLMeshBufferType { get }
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(tvOS 9.0, *)
protocol MDLMeshBufferAllocator : NSObjectProtocol {
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  func newZoneForBuffersWithSize(_ sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferWithData(_ data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferDataAllocator : NSObject, MDLMeshBufferAllocator {
  @available(tvOS 9.0, *)
  func newZone(_ capacity: Int) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newZoneForBuffersWithSize(_ sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone
  @available(tvOS 9.0, *)
  func newBuffer(_ length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferWithData(_ data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer
  @available(tvOS 9.0, *)
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, length length: Int, type type: MDLMeshBufferType) -> MDLMeshBuffer?
  @available(tvOS 9.0, *)
  func newBufferFromZone(_ zone: MDLMeshBufferZone?, data data: NSData, type type: MDLMeshBufferType) -> MDLMeshBuffer?
}
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
