
class ICCameraItem : NSObject {
  var device: ICCameraDevice { get }
  var parentFolder: ICCameraFolder { get }
  var name: String { get }
  var UTI: String { get }
  var fileSystemPath: String { get }
  var locked: Bool { get }
  var raw: Bool { get }
  var inTemporaryStore: Bool { get }
  var creationDate: NSDate { get }
  var modificationDate: NSDate { get }
  var thumbnailIfAvailable: CGImage? { get }
  var largeThumbnailIfAvailable: CGImage? { get }
  var metadataIfAvailable: [String : AnyObject]? { get }
  var userData: NSMutableDictionary? { get }
  var ptpObjectHandle: UInt32 { get }
  var addedAfterContentCatalogCompleted: Bool { get }
  init()
}
class ICCameraFolder : ICCameraItem {
  var contents: [ICCameraItem] { get }
  init()
}
class ICCameraFile : ICCameraItem {
  var fileSize: off_t { get }
  var orientation: ICEXIFOrientationType
  var duration: Double { get }
  var sidecarFiles: [ICCameraItem] { get }
  init()
}
