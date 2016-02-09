
var foundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(tvOS 4.0, *)
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var skipHiddenVolumes: VolumeEnumerationOptions { get }
  static var produceFileReferenceURLs: VolumeEnumerationOptions { get }
}
@available(tvOS 4.0, *)
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var skipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var skipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var skipsHiddenFiles: DirectoryEnumerationOptions { get }
}
@available(tvOS 4.0, *)
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var usingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var withoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
@available(tvOS 8.0, *)
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contains
  case same
  case other
}
@available(tvOS 6.0, *)
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  @available(tvOS 4.0, *)
  func mountedVolumeURLsIncludingResourceValuesFor(keys propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  @available(tvOS 4.0, *)
  func contentsOfDirectory(at url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  @available(tvOS 4.0, *)
  func urls(forDirectory directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  @available(tvOS 4.0, *)
  func url(forDirectory directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(tvOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(tvOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  @available(tvOS 5.0, *)
  func createDirectoryAt(url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(tvOS 5.0, *)
  func createSymbolicLinkAt(url: URL, withDestinationURL destURL: URL) throws
  @available(tvOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  @available(tvOS 2.0, *)
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  @available(tvOS 2.0, *)
  func createDirectoryAt(path path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(tvOS 2.0, *)
  func contentsOfDirectoryAt(path path: String) throws -> [String]
  @available(tvOS 2.0, *)
  func subpathsOfDirectoryAt(path path: String) throws -> [String]
  @available(tvOS 2.0, *)
  func attributesOfItemAt(path path: String) throws -> [String : AnyObject]
  @available(tvOS 2.0, *)
  func attributesOfFileSystemFor(path path: String) throws -> [String : AnyObject]
  @available(tvOS 2.0, *)
  func createSymbolicLinkAt(path path: String, withDestinationPath destPath: String) throws
  @available(tvOS 2.0, *)
  func destinationOfSymbolicLinkAt(path path: String) throws -> String
  @available(tvOS 2.0, *)
  func copyItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(tvOS 2.0, *)
  func moveItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(tvOS 2.0, *)
  func linkItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(tvOS 2.0, *)
  func removeItemAt(path path: String) throws
  @available(tvOS 4.0, *)
  func copyItem(at srcURL: URL, to dstURL: URL) throws
  @available(tvOS 4.0, *)
  func moveItem(at srcURL: URL, to dstURL: URL) throws
  @available(tvOS 4.0, *)
  func linkItem(at srcURL: URL, to dstURL: URL) throws
  @available(tvOS 4.0, *)
  func removeItemAt(URL: URL) throws
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(path: String) -> Bool
  func fileExistsAt(path path: String) -> Bool
  func fileExistsAt(path path: String, isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFileAt(path path: String) -> Bool
  func isWritableFileAt(path path: String) -> Bool
  func isExecutableFileAt(path path: String) -> Bool
  func isDeletableFileAt(path path: String) -> Bool
  func contentsEqualAt(path path1: String, andPath path2: String) -> Bool
  func displayNameAt(path path: String) -> String
  func componentsToDisplayFor(path path: String) -> [String]?
  func enumeratorAt(path path: String) -> DirectoryEnumerator?
  @available(tvOS 4.0, *)
  func enumerator(at url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpathsAt(path path: String) -> [String]?
  func contentsAt(path path: String) -> Data?
  func createFileAt(path path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWith(path path: String) -> UnsafePointer<Int8>
  func stringWith(fileSystemRepresentation str: UnsafePointer<Int8>, length len: Int) -> String
  @available(tvOS 4.0, *)
  func replaceItem(at originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  @available(tvOS 5.0, *)
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(tvOS 5.0, *)
  func isUbiquitousItemAt(url: URL) -> Bool
  @available(tvOS 5.0, *)
  func startDownloadingUbiquitousItemAt(url: URL) throws
  @available(tvOS 5.0, *)
  func evictUbiquitousItemAt(url: URL) throws
  @available(tvOS 5.0, *)
  func urlFor(ubiquityContainerIdentifier containerIdentifier: String?) -> URL?
  @available(tvOS 5.0, *)
  func urlForPublishingUbiquitousItemAt(url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @available(tvOS 6.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  @available(tvOS 7.0, *)
  func containerURLFor(securityApplicationGroupIdentifier groupIdentifier: String) -> URL?
  init()
}
extension Object {
}
protocol FileManagerDelegate : ObjectProtocol {
  optional func fileManager(fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  @available(tvOS 4.0, *)
  optional func fileManager(fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
class DirectoryEnumerator : Enumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(tvOS 4.0, *)
  var level: Int { get }
  @available(tvOS 4.0, *)
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
@available(tvOS 4.0, *)
let fileProtectionKey: String
@available(tvOS 4.0, *)
let fileProtectionNone: String
@available(tvOS 4.0, *)
let fileProtectionComplete: String
@available(tvOS 5.0, *)
let fileProtectionCompleteUnlessOpen: String
@available(tvOS 5.0, *)
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
