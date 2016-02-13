
var foundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(iOS 4.0, *)
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var skipHiddenVolumes: VolumeEnumerationOptions { get }
  static var produceFileReferenceURLs: VolumeEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var skipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var skipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var skipsHiddenFiles: DirectoryEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var usingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var withoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
@available(iOS 8.0, *)
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contains
  case same
  case other
}
@available(iOS 6.0, *)
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  @available(iOS 4.0, *)
  func mountedVolumeURLsIncludingResourceValues(forKeys propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  @available(iOS 4.0, *)
  func contentsOfDirectory(at url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  @available(iOS 4.0, *)
  func urls(for directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  @available(iOS 4.0, *)
  func url(for directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  @available(iOS 5.0, *)
  func createDirectory(at url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(iOS 5.0, *)
  func createSymbolicLink(at url: URL, withDestinationURL destURL: URL) throws
  @available(iOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  @available(iOS 2.0, *)
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  @available(iOS 2.0, *)
  func createDirectory(atPath path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(iOS 2.0, *)
  func contentsOfDirectory(atPath path: String) throws -> [String]
  @available(iOS 2.0, *)
  func subpathsOfDirectory(atPath path: String) throws -> [String]
  @available(iOS 2.0, *)
  func attributesOfItem(atPath path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func attributesOfFileSystem(forPath path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func createSymbolicLink(atPath path: String, withDestinationPath destPath: String) throws
  @available(iOS 2.0, *)
  func destinationOfSymbolicLink(atPath path: String) throws -> String
  @available(iOS 2.0, *)
  func copyItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func moveItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func linkItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func removeItem(atPath path: String) throws
  @available(iOS 4.0, *)
  func copyItem(at srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func moveItem(at srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func linkItem(at srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func removeItem(at URL: URL) throws
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(path: String) -> Bool
  func fileExists(atPath path: String) -> Bool
  func fileExists(atPath path: String, isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFile(atPath path: String) -> Bool
  func isWritableFile(atPath path: String) -> Bool
  func isExecutableFile(atPath path: String) -> Bool
  func isDeletableFile(atPath path: String) -> Bool
  func contentsEqual(atPath path1: String, andPath path2: String) -> Bool
  func displayName(atPath path: String) -> String
  func componentsToDisplay(forPath path: String) -> [String]?
  func enumerator(atPath path: String) -> DirectoryEnumerator?
  @available(iOS 4.0, *)
  func enumerator(at url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpaths(atPath path: String) -> [String]?
  func contents(atPath path: String) -> Data?
  func createFile(atPath path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentation(path path: String) -> UnsafePointer<Int8>
  func string(fileSystemRepresentation str: UnsafePointer<Int8>, length len: Int) -> String
  @available(iOS 4.0, *)
  func replaceItem(at originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  @available(iOS 5.0, *)
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(iOS 5.0, *)
  func isUbiquitousItem(at url: URL) -> Bool
  @available(iOS 5.0, *)
  func startDownloadingUbiquitousItem(at url: URL) throws
  @available(iOS 5.0, *)
  func evictUbiquitousItem(at url: URL) throws
  @available(iOS 5.0, *)
  func url(forUbiquityContainerIdentifier containerIdentifier: String?) -> URL?
  @available(iOS 5.0, *)
  func urlForPublishingUbiquitousItem(at url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @available(iOS 6.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  @available(iOS 7.0, *)
  func containerURL(forSecurityApplicationGroupIdentifier groupIdentifier: String) -> URL?
  init()
}
extension Object {
}
protocol FileManagerDelegate : ObjectProtocol {
  optional func fileManager(fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
class DirectoryEnumerator : Enumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(iOS 4.0, *)
  var level: Int { get }
  @available(iOS 4.0, *)
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
@available(iOS 4.0, *)
let fileProtectionKey: String
@available(iOS 4.0, *)
let fileProtectionNone: String
@available(iOS 4.0, *)
let fileProtectionComplete: String
@available(iOS 5.0, *)
let fileProtectionCompleteUnlessOpen: String
@available(iOS 5.0, *)
let fileProtectionCompleteUntilFirstUserAuthentication: String
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
