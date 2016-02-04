
var foundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(iOS 4.0, *)
struct VolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: VolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: VolumeEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct DirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: DirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: DirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: DirectoryEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct FileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: FileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: FileManagerItemReplacementOptions { get }
}
@available(iOS 8.0, *)
enum URLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(iOS 6.0, *)
let ubiquityIdentityDidChangeNotification: String
class FileManager : Object {
  class func defaultManager() -> FileManager
  @available(iOS 4.0, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: VolumeEnumerationOptions = []) -> [URL]?
  @available(iOS 4.0, *)
  func contentsOfDirectoryAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = []) throws -> [URL]
  @available(iOS 4.0, *)
  func urlsFor(directory: SearchPathDirectory, inDomains domainMask: SearchPathDomainMask) -> [URL]
  @available(iOS 4.0, *)
  func urlFor(directory: SearchPathDirectory, inDomain domain: SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(iOS 8.0, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<URLRelationship>, of directory: SearchPathDirectory, inDomain domainMask: SearchPathDomainMask, toItemAt url: URL) throws
  @available(iOS 5.0, *)
  func createDirectoryAt(url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(iOS 5.0, *)
  func createSymbolicLinkAt(url: URL, withDestinationURL destURL: URL) throws
  @available(iOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  @available(iOS 2.0, *)
  func setAttributes(attributes: [String : AnyObject] = [:], ofItemAtPath path: String) throws
  @available(iOS 2.0, *)
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]? = [:]) throws
  @available(iOS 2.0, *)
  func contentsOfDirectoryAtPath(path: String) throws -> [String]
  @available(iOS 2.0, *)
  func subpathsOfDirectoryAtPath(path: String) throws -> [String]
  @available(iOS 2.0, *)
  func attributesOfItemAtPath(path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func attributesOfFileSystemForPath(path: String) throws -> [String : AnyObject]
  @available(iOS 2.0, *)
  func createSymbolicLinkAtPath(path: String, withDestinationPath destPath: String) throws
  @available(iOS 2.0, *)
  func destinationOfSymbolicLinkAtPath(path: String) throws -> String
  @available(iOS 2.0, *)
  func copyItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func moveItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func linkItemAtPath(srcPath: String, toPath dstPath: String) throws
  @available(iOS 2.0, *)
  func removeItemAtPath(path: String) throws
  @available(iOS 4.0, *)
  func copyItemAt(srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func moveItemAt(srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func linkItemAt(srcURL: URL, to dstURL: URL) throws
  @available(iOS 4.0, *)
  func removeItemAt(URL: URL) throws
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
  @available(iOS 4.0, *)
  func enumeratorAt(url: URL, includingPropertiesForKeys keys: [String]?, options mask: DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> DirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> Data?
  func createFileAtPath(path: String, contents data: Data?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(iOS 4.0, *)
  func replaceItemAt(originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<URL?>) throws
  @available(iOS 5.0, *)
  func setUbiquitous(flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(iOS 5.0, *)
  func isUbiquitousItemAt(url: URL) -> Bool
  @available(iOS 5.0, *)
  func startDownloadingUbiquitousItemAt(url: URL) throws
  @available(iOS 5.0, *)
  func evictUbiquitousItemAt(url: URL) throws
  @available(iOS 5.0, *)
  func urlForUbiquityContainerIdentifier(containerIdentifier: String?) -> URL?
  @available(iOS 5.0, *)
  func urlForPublishingUbiquitousItemAt(url: URL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<Date?>) throws -> URL
  @available(iOS 6.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<Coding, Copying, ObjectProtocol>? { get }
  @available(iOS 7.0, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> URL?
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
