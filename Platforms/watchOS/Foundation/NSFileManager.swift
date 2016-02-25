
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(watchOS 2.0, *)
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
@available(watchOS 2.0, *)
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
@available(watchOS 2.0, *)
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
@available(watchOS 2.0, *)
enum NSURLRelationship : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(watchOS 2.0, *)
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  @available(watchOS 2.0, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(_ propertyKeys: [String]?, options options: NSVolumeEnumerationOptions) -> [NSURL]?
  @available(watchOS 2.0, *)
  func contentsOfDirectoryAtURL(_ url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions) throws -> [NSURL]
  @available(watchOS 2.0, *)
  func URLsForDirectory(_ directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  @available(watchOS 2.0, *)
  func URLForDirectory(_ directory: NSSearchPathDirectory, inDomain domain: NSSearchPathDomainMask, appropriateForURL url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  @available(watchOS 2.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAtURL directoryURL: NSURL, toItemAtURL otherURL: NSURL) throws
  @available(watchOS 2.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectory directory: NSSearchPathDirectory, inDomain domainMask: NSSearchPathDomainMask, toItemAtURL url: NSURL) throws
  @available(watchOS 2.0, *)
  func createDirectoryAtURL(_ url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes attributes: [String : AnyObject]?) throws
  @available(watchOS 2.0, *)
  func createSymbolicLinkAtURL(_ url: NSURL, withDestinationURL destURL: NSURL) throws
  @available(watchOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  @available(watchOS 2.0, *)
  func setAttributes(_ attributes: [String : AnyObject], ofItemAtPath path: String) throws
  @available(watchOS 2.0, *)
  func createDirectoryAtPath(_ path: String, withIntermediateDirectories createIntermediates: Bool, attributes attributes: [String : AnyObject]?) throws
  @available(watchOS 2.0, *)
  func contentsOfDirectoryAtPath(_ path: String) throws -> [String]
  @available(watchOS 2.0, *)
  func subpathsOfDirectoryAtPath(_ path: String) throws -> [String]
  @available(watchOS 2.0, *)
  func attributesOfItemAtPath(_ path: String) throws -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func attributesOfFileSystemForPath(_ path: String) throws -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func createSymbolicLinkAtPath(_ path: String, withDestinationPath destPath: String) throws
  @available(watchOS 2.0, *)
  func destinationOfSymbolicLinkAtPath(_ path: String) throws -> String
  @available(watchOS 2.0, *)
  func copyItemAtPath(_ srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func moveItemAtPath(_ srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func linkItemAtPath(_ srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func removeItemAtPath(_ path: String) throws
  @available(watchOS 2.0, *)
  func copyItemAtURL(_ srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(watchOS 2.0, *)
  func moveItemAtURL(_ srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(watchOS 2.0, *)
  func linkItemAtURL(_ srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(watchOS 2.0, *)
  func removeItemAtURL(_ URL: NSURL) throws
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func fileAttributesAtPath(_ path: String, traverseLink yorn: Bool) -> [NSObject : AnyObject]?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func changeFileAttributes(_ attributes: [NSObject : AnyObject], atPath path: String) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func directoryContentsAtPath(_ path: String) -> [AnyObject]?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func fileSystemAttributesAtPath(_ path: String) -> [NSObject : AnyObject]?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func pathContentOfSymbolicLinkAtPath(_ path: String) -> String?
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func createSymbolicLinkAtPath(_ path: String, pathContent otherpath: String) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func createDirectoryAtPath(_ path: String, attributes attributes: [NSObject : AnyObject]) -> Bool
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(_ path: String) -> Bool
  func fileExistsAtPath(_ path: String) -> Bool
  func fileExistsAtPath(_ path: String, isDirectory isDirectory: UnsafeMutablePointer<ObjCBool>) -> Bool
  func isReadableFileAtPath(_ path: String) -> Bool
  func isWritableFileAtPath(_ path: String) -> Bool
  func isExecutableFileAtPath(_ path: String) -> Bool
  func isDeletableFileAtPath(_ path: String) -> Bool
  func contentsEqualAtPath(_ path1: String, andPath path2: String) -> Bool
  func displayNameAtPath(_ path: String) -> String
  func componentsToDisplayForPath(_ path: String) -> [String]?
  func enumeratorAtPath(_ path: String) -> NSDirectoryEnumerator?
  @available(watchOS 2.0, *)
  func enumeratorAtURL(_ url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions, errorHandler handler: ((NSURL, NSError) -> Bool)?) -> NSDirectoryEnumerator?
  func subpathsAtPath(_ path: String) -> [String]?
  func contentsAtPath(_ path: String) -> NSData?
  func createFileAtPath(_ path: String, contents data: NSData?, attributes attr: [String : AnyObject]?) -> Bool
  func fileSystemRepresentationWithPath(_ path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(_ str: UnsafePointer<Int8>, length len: Int) -> String
  @available(watchOS 2.0, *)
  func replaceItemAtURL(_ originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName backupItemName: String?, options options: NSFileManagerItemReplacementOptions, resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  @available(watchOS 2.0, *)
  func setUbiquitous(_ flag: Bool, itemAtURL url: NSURL, destinationURL destinationURL: NSURL) throws
  @available(watchOS 2.0, *)
  func isUbiquitousItemAtURL(_ url: NSURL) -> Bool
  @available(watchOS 2.0, *)
  func startDownloadingUbiquitousItemAtURL(_ url: NSURL) throws
  @available(watchOS 2.0, *)
  func evictUbiquitousItemAtURL(_ url: NSURL) throws
  @available(watchOS 2.0, *)
  func URLForUbiquityContainerIdentifier(_ containerIdentifier: String?) -> NSURL?
  @available(watchOS 2.0, *)
  func URLForPublishingUbiquitousItemAtURL(_ url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @available(watchOS 2.0, *)
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  @available(watchOS 2.0, *)
  func containerURLForSecurityApplicationGroupIdentifier(_ groupIdentifier: String) -> NSURL?
}
extension NSObject {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func fileManager(_ fm: NSFileManager, shouldProceedAfterError errorInfo: [NSObject : AnyObject]) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func fileManager(_ fm: NSFileManager, shouldProceedAfterError errorInfo: [NSObject : AnyObject]) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  class func fileManager(_ fm: NSFileManager, willProcessPath path: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func fileManager(_ fm: NSFileManager, willProcessPath path: String)
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(_ fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldCopyItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldMoveItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldLinkItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldRemoveItemAtURL URL: NSURL) -> Bool
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtURL URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(watchOS 2.0, *)
  var level: Int { get }
  @available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let NSFileProtectionKey: String
@available(watchOS 2.0, *)
let NSFileProtectionNone: String
@available(watchOS 2.0, *)
let NSFileProtectionComplete: String
@available(watchOS 2.0, *)
let NSFileProtectionCompleteUnlessOpen: String
@available(watchOS 2.0, *)
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
