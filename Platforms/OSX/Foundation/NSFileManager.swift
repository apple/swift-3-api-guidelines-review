
var foundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(OSX 10.6, *)
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: VolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: VolumeEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: DirectoryEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
@available(OSX 10.10, *)
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(OSX 10.11, *)
struct FileManagerUnmountOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllPartitionsAndEjectDisk: FileManagerUnmountOptions { get }
  static var WithoutUI: FileManagerUnmountOptions { get }
}
@available(OSX 10.11, *)
let fileManagerUnmountDissentingProcessIdentifierErrorKey: String
@available(OSX 10.8, *)
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  @available(OSX 10.6, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  @available(OSX 10.11, *)
  func unmountVolumeAt(url: URL, options mask: FileManagerUnmountOptions = [], completionHandler: (Error?) -> Void)
  @available(OSX 10.6, *)
  func contentsOfDirectoryAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  @available(OSX 10.6, *)
  func urlsFor(directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  @available(OSX 10.6, *)
  func urlFor(directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  @available(OSX 10.7, *)
  func createDirectoryAt(url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(OSX 10.7, *)
  func createSymbolicLinkAt(url: URL, withDestinationURL destURL: URL) throws
  @available(OSX 10.5, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  @available(OSX 10.5, *)
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  @available(OSX 10.5, *)
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(OSX 10.5, *)
  func contentsOfDirectoryAtPath(path: String) throws -> [String]
  @available(OSX 10.5, *)
  func subpathsOfDirectoryAtPath(path: String) throws -> [String]
  @available(OSX 10.5, *)
  func attributesOfItemAtPath(path: String) throws -> [String : AnyObject]
  @available(OSX 10.5, *)
  func attributesOfFileSystemForPath(path: String) throws -> [String : AnyObject]
  @available(OSX 10.5, *)
  func createSymbolicLinkAtPath(path: String, withDestinationPath destPath: String) throws
  @available(OSX 10.5, *)
  func destinationOfSymbolicLinkAtPath(path: String) throws -> String
  @available(OSX 10.5, *)
  func copyItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func moveItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func linkItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(OSX 10.5, *)
  func removeItemAtPath(path: String) throws
  @available(OSX 10.6, *)
  func copyItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func moveItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func linkItemAt(srcURL: URL, to dstURL: URL) throws
  @available(OSX 10.6, *)
  func removeItemAt(URL: URL) throws
  @available(OSX 10.8, *)
  func trashItemAt(url: URL, resultingItemURL outResultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(path: String) -> Bool
  func fileExistsAtPath(path: String) -> Bool
  func fileExistsAtPath(path: String, isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFileAtPath(path: String) -> Bool
  func isWritableFileAtPath(path: String) -> Bool
  func isExecutableFileAtPath(path: String) -> Bool
  func isDeletableFileAtPath(path: String) -> Bool
  func contentsEqualAtPath(path1: String, andPath path2: String) -> Bool
  func displayNameAtPath(path: String) -> String
  func componentsToDisplayForPath(path: String) -> [String]?
  func enumeratorAtPath(path: String) -> DirectoryEnumerator?
  @available(OSX 10.6, *)
  func enumeratorAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> Data?
  func createFileAtPath(path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(OSX 10.6, *)
  func replaceItemAt(originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  @available(OSX 10.7, *)
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(OSX 10.7, *)
  func isUbiquitousItemAt(url: URL) -> Bool
  @available(OSX 10.7, *)
  func startDownloadingUbiquitousItemAt(url: URL) throws
  @available(OSX 10.7, *)
  func evictUbiquitousItemAt(url: URL) throws
  @available(OSX 10.7, *)
  func urlForUbiquityContainerIdentifier(containerIdentifier: String?) -> URL?
  @available(OSX 10.7, *)
  func urlForPublishingUbiquitousItemAt(url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @available(OSX 10.8, *)
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  @available(OSX 10.8, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> URL?
  init()
}
extension Object {
}
protocol FileManagerDelegate : ObjectProtocol {
  optional func fileManager(fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
class DirectoryEnumerator : Enumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(OSX 10.6, *)
  var level: Int { get }
  @available(OSX 10.6, *)
  func skipDescendants()
  init()
}
let fileType: String
let fileTypeDirectory: String
let fileTypeRegular: String
let fileTypeSymbolicLink: String
let fileTypeSocket: String
let fileTypeCharacterSpecial: String
let fileTypeBlockSpecial: String
let fileTypeUnknown: String
let fileSize: String
let fileModificationDate: String
let fileReferenceCount: String
let fileDeviceIdentifier: String
let fileOwnerAccountName: String
let fileGroupOwnerAccountName: String
let filePosixPermissions: String
let fileSystemNumber: String
let fileSystemFileNumber: String
let fileExtensionHidden: String
let fileHFSCreatorCode: String
let fileHFSTypeCode: String
let fileImmutable: String
let fileAppendOnly: String
let fileCreationDate: String
let fileOwnerAccountID: String
let fileGroupOwnerAccountID: String
let fileBusy: String
let fileSystemSize: String
let fileSystemFreeSize: String
let fileSystemNodes: String
let fileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> Date?
  func fileType() -> String?
  func filePosixPermissions() -> Int
  func fileOwnerAccountName() -> String?
  func fileGroupOwnerAccountName() -> String?
  func fileSystemNumber() -> Int
  func fileSystemFileNumber() -> Int
  func fileExtensionHidden() -> Bool
  func fileHFSCreatorCode() -> OSType
  func fileHFSTypeCode() -> OSType
  func fileIsImmutable() -> Bool
  func fileIsAppendOnly() -> Bool
  func fileCreationDate() -> Date?
  func fileOwnerAccountID() -> Number?
  func fileGroupOwnerAccountID() -> Number?
}
