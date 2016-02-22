
@available(tvOS 9.0, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(url URL: NSURL)
  init(url URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: NSErrorPointer)
  func export(to URL: NSURL) -> Bool
  func export(to URL: NSURL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBox(atTime time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: NSTimeInterval
  var startTime: NSTimeInterval
  var endTime: NSTimeInterval
  var url: NSURL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var count: Int { get }
  subscript(index: Int) -> MDLObject? { get }
  func object(at index: Int) -> MDLObject
  init()
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
