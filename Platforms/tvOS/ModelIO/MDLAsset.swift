
@available(tvOS 9.0, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(url URL: NSURL)
  init(url URL: NSURL, vertexDescriptor vertexDescriptor: MDLVertexDescriptor?, bufferAllocator bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: NSURL, vertexDescriptor vertexDescriptor: MDLVertexDescriptor?, bufferAllocator bufferAllocator: MDLMeshBufferAllocator?, preserveTopology preserveTopology: Bool, error error: NSErrorPointer)
  func export(to URL: NSURL) -> Bool
  func export(to URL: NSURL, error error: ()) throws
  class func canImportFileExtension(_ extension: String) -> Bool
  class func canExportFileExtension(_ extension: String) -> Bool
  func boundingBox(atTime time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: NSTimeInterval
  var startTime: NSTimeInterval
  var endTime: NSTimeInterval
  var url: NSURL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(_ object: MDLObject)
  func remove(_ object: MDLObject)
  var count: Int { get }
  subscript(_ index: Int) -> MDLObject? { get }
  func object(at index: Int) -> MDLObject
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
