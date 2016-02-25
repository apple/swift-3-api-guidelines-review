
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(iOS 4.0, *)
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var skipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var produceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var skipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var skipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var skipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
@available(iOS 4.0, *)
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var usingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var withoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
@available(iOS 8.0, *)
enum NSURLRelationship : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case contains
  case same
  case other
}
@available(iOS 6.0, *)
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  @available(iOS 4.0, *)
  func mountedVolumeURLsIncludingResourceValues(forKeys propertyKeys: [String]?, options options: NSVolumeEnumerationOptions = []) -> [NSURL]?
  @available(iOS 4.0, *)
  func contentsOfDirectory(at url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions = []) throws -> [NSURL]
  @available(iOS 4.0, *)
  func urls(for directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  @available(iOS 4.0, *)
  func url(for directory: NSSearchPathDirectory, in domain: NSSearchPathDomainMask, appropriateFor url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  @available(iOS 8.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAt directoryURL: NSURL, toItemAt otherURL: NSURL) throws
  @available(iOS 8.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<NSURLRelationship>, of directory: NSSearchPathDirectory, in domainMask: NSSearchPathDomainMask, toItemAt url: NSURL) throws
  @available(iOS 5.0, *)
  func createDirectory(at url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes attributes: [String : AnyObject]? = [:]) throws
  @available(iOS 5.0, *)
  func createSymbolicLink(at url: NSURL, withDestinationURL destURL: NSURL) throws
  @available(iOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  @available(iOS 2.0, *)
  func setAttributes(_ attributes: [String : AnyObject], ofItemAtPath path: String) throws
  @available(iOS 2.0, *)
  func createDirectory(atPath path: String, withIntermediateDirectories createIntermediates: Bool, attributes attributes: [String : AnyObject]? = [:]) throws
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
  func copyItem(at srcURL: NSURL, to dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func moveItem(at srcURL: NSURL, to dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func linkItem(at srcURL: NSURL, to dstURL: NSURL) throws
  @available(iOS 4.0, *)
  func removeItem(at URL: NSURL) throws
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(_ path: String) -> Bool
  func fileExists(atPath path: String) -> Bool
  func fileExists(atPath path: String, isDirectory isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFile(atPath path: String) -> Bool
  func isWritableFile(atPath path: String) -> Bool
  func isExecutableFile(atPath path: String) -> Bool
  func isDeletableFile(atPath path: String) -> Bool
  func contentsEqual(atPath path1: String, andPath path2: String) -> Bool
  func displayName(atPath path: String) -> String
  func componentsToDisplay(forPath path: String) -> [String]?
  func enumerator(atPath path: String) -> NSDirectoryEnumerator?
  @available(iOS 4.0, *)
  func enumerator(at url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions = [], errorHandler handler: ((NSURL, NSError) -> Bool)? = nil) -> NSDirectoryEnumerator?
  func subpaths(atPath path: String) -> [String]?
  func contents(atPath path: String) -> NSData?
  func createFile(atPath path: String, contents data: NSData?, attributes attr: [String : AnyObject]? = [:]) -> Bool
  func fileSystemRepresentation(withPath path: String) -> UnsafePointer<Int8>
  func string(withFileSystemRepresentation str: UnsafePointer<Int8>, length len: Int) -> String
  @available(iOS 4.0, *)
  func replaceItem(at originalItemURL: NSURL, withItemAt newItemURL: NSURL, backupItemName backupItemName: String?, options options: NSFileManagerItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  @available(iOS 5.0, *)
  func setUbiquitous(_ flag: Bool, itemAt url: NSURL, destinationURL destinationURL: NSURL) throws
  @available(iOS 5.0, *)
  func isUbiquitousItem(at url: NSURL) -> Bool
  @available(iOS 5.0, *)
  func startDownloadingUbiquitousItem(at url: NSURL) throws
  @available(iOS 5.0, *)
  func evictUbiquitousItem(at url: NSURL) throws
  @available(iOS 5.0, *)
  func url(forUbiquityContainerIdentifier containerIdentifier: String?) -> NSURL?
  @available(iOS 5.0, *)
  func urlForPublishingUbiquitousItem(at url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @available(iOS 6.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  @available(iOS 7.0, *)
  func containerURL(forSecurityApplicationGroupIdentifier groupIdentifier: String) -> NSURL?
}
extension NSObject {
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(_ fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldCopyItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldMoveItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldLinkItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAt srcURL: NSURL, to dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldRemoveItemAt URL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  @available(iOS 4.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAt URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(iOS 4.0, *)
  var level: Int { get }
  @available(iOS 4.0, *)
  func skipDescendants()
}
let NSFileType: String
let NSFileTypeDirectory: String
let NSFileTypeRegular: String
let NSFileTypeSymbolicLink: String
let NSFileTypeSocket: String
let NSFileTypeCharacterSpecial: String
let NSFileTypeBlockSpecial: String
let NSFileTypeUnknown: String
let NSFileSize: String
let NSFileModificationDate: String
let NSFileReferenceCount: String
let NSFileDeviceIdentifier: String
let NSFileOwnerAccountName: String
let NSFileGroupOwnerAccountName: String
let NSFilePosixPermissions: String
let NSFileSystemNumber: String
let NSFileSystemFileNumber: String
let NSFileExtensionHidden: String
let NSFileHFSCreatorCode: String
let NSFileHFSTypeCode: String
let NSFileImmutable: String
let NSFileAppendOnly: String
let NSFileCreationDate: String
let NSFileOwnerAccountID: String
let NSFileGroupOwnerAccountID: String
let NSFileBusy: String
@available(iOS 4.0, *)
let NSFileProtectionKey: String
@available(iOS 4.0, *)
let NSFileProtectionNone: String
@available(iOS 4.0, *)
let NSFileProtectionComplete: String
@available(iOS 5.0, *)
let NSFileProtectionCompleteUnlessOpen: String
@available(iOS 5.0, *)
let NSFileProtectionCompleteUntilFirstUserAuthentication: String
let NSFileSystemSize: String
let NSFileSystemFreeSize: String
let NSFileSystemNodes: String
let NSFileSystemFreeNodes: String
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> NSDate?
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
  func fileCreationDate() -> NSDate?
  func fileOwnerAccountID() -> NSNumber?
  func fileGroupOwnerAccountID() -> NSNumber?
}
