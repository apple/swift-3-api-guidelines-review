
@available(iOS 9.0, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(URL: NSURL)
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(URL: NSURL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: NSErrorPointer)
  func exportAssetToURL(URL: NSURL) -> Bool
  func exportAssetToURL(URL: NSURL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: NSTimeInterval
  var startTime: NSTimeInterval
  var endTime: NSTimeInterval
  var URL: NSURL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var count: Int { get }
  subscript (index: Int) -> MDLObject? { get }
  func objectAtIndex(index: Int) -> MDLObject
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
