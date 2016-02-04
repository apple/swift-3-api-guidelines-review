
enum MDLMeshBufferType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Index
}
@available(iOS 9.0, *)
class MDLMeshBufferMap : NSObject {
  init(bytes: UnsafeMutablePointer<Void>, deallocator: (() -> Void)?)
  var bytes: UnsafeMutablePointer<Void> { get }
  init()
}
@available(iOS 9.0, *)
protocol MDLMeshBuffer : NSObjectProtocol, NSCopying {
  func fillData(data: NSData, offset: Int)
  func map() -> MDLMeshBufferMap
  var length: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  var type: MDLMeshBufferType { get }
}
@available(iOS 9.0, *)
class MDLMeshBufferData : NSObject, MDLMeshBuffer {
  init(type: MDLMeshBufferType, length: Int)
  init(type: MDLMeshBufferType, data: NSData?)
  var data: NSData { get }
  init()
  @available(iOS 9.0, *)
  func fillData(data: NSData, offset: Int)
  @available(iOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(iOS 9.0, *)
  var length: Int { get }
  @available(iOS 9.0, *)
  var allocator: MDLMeshBufferAllocator { get }
  @available(iOS 9.0, *)
  var type: MDLMeshBufferType { get }
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
protocol MDLMeshBufferZone : NSObjectProtocol {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
}
@available(iOS 9.0, *)
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
class MDLMeshBufferZoneDefault : NSObject, MDLMeshBufferZone {
  var capacity: Int { get }
  var allocator: MDLMeshBufferAllocator { get }
  init()
}
