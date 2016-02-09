
@available(iOS 9.0, *)
class MDLAsset : Object, Copying, FastEnumeration {
  init(url URL: URL)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: ErrorPointer)
  func export(to URL: URL) -> Bool
  func export(to URL: URL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBoxAtTime(time: TimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: TimeInterval
  var startTime: TimeInterval
  var endTime: TimeInterval
  var url: URL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var count: Int { get }
  subscript (atIndexedSubscript index: Int) -> MDLObject? { get }
  func object(at index: Int) -> MDLObject
  init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func countByEnumerating(withState state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
