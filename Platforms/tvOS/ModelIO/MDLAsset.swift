
@available(tvOS 9.0, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(URL URL: NSURL)
  init(URL URL: NSURL, vertexDescriptor vertexDescriptor: MDLVertexDescriptor?, bufferAllocator bufferAllocator: MDLMeshBufferAllocator?)
  init(URL URL: NSURL, vertexDescriptor vertexDescriptor: MDLVertexDescriptor?, bufferAllocator bufferAllocator: MDLMeshBufferAllocator?, preserveTopology preserveTopology: Bool, error error: NSErrorPointer)
  func exportAssetToURL(_ URL: NSURL) -> Bool
  func exportAssetToURL(_ URL: NSURL, error error: ()) throws
  class func canImportFileExtension(_ extension: String) -> Bool
  class func canExportFileExtension(_ extension: String) -> Bool
  func boundingBoxAtTime(_ time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: NSTimeInterval
  var startTime: NSTimeInterval
  var endTime: NSTimeInterval
  var URL: NSURL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func addObject(_ object: MDLObject)
  func removeObject(_ object: MDLObject)
  var count: Int { get }
  subscript(_ index: Int) -> MDLObject? { get }
  func objectAtIndex(_ index: Int) -> MDLObject
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
