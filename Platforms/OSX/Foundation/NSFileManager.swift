
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
@available(OSX 10.6, *)
struct NSVolumeEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipHiddenVolumes: NSVolumeEnumerationOptions { get }
  static var ProduceFileReferenceURLs: NSVolumeEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct NSDirectoryEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SkipsSubdirectoryDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsPackageDescendants: NSDirectoryEnumerationOptions { get }
  static var SkipsHiddenFiles: NSDirectoryEnumerationOptions { get }
}
@available(OSX 10.6, *)
struct NSFileManagerItemReplacementOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UsingNewMetadataOnly: NSFileManagerItemReplacementOptions { get }
  static var WithoutDeletingBackupItem: NSFileManagerItemReplacementOptions { get }
}
@available(OSX 10.10, *)
enum NSURLRelationship : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case Same
  case Other
}
@available(OSX 10.11, *)
struct NSFileManagerUnmountOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllPartitionsAndEjectDisk: NSFileManagerUnmountOptions { get }
  static var WithoutUI: NSFileManagerUnmountOptions { get }
}
@available(OSX 10.11, *)
let NSFileManagerUnmountDissentingProcessIdentifierErrorKey: String
@available(OSX 10.8, *)
let NSUbiquityIdentityDidChangeNotification: String
class NSFileManager : NSObject {
  class func defaultManager() -> NSFileManager
  @available(OSX 10.6, *)
  func mountedVolumeURLsIncludingResourceValuesForKeys(propertyKeys: [String]?, options: NSVolumeEnumerationOptions) -> [NSURL]?
  @available(OSX 10.11, *)
  func unmountVolumeAtURL(url: NSURL, options mask: NSFileManagerUnmountOptions, completionHandler: (NSError?) -> Void)
  @available(OSX 10.6, *)
  func contentsOfDirectoryAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions) throws -> [NSURL]
  @available(OSX 10.6, *)
  func URLsForDirectory(directory: NSSearchPathDirectory, inDomains domainMask: NSSearchPathDomainMask) -> [NSURL]
  @available(OSX 10.6, *)
  func URLForDirectory(directory: NSSearchPathDirectory, inDomain domain: NSSearchPathDomainMask, appropriateForURL url: NSURL?, create shouldCreate: Bool) throws -> NSURL
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectoryAtURL directoryURL: NSURL, toItemAtURL otherURL: NSURL) throws
  @available(OSX 10.10, *)
  func getRelationship(outRelationship: UnsafeMutablePointer<NSURLRelationship>, ofDirectory directory: NSSearchPathDirectory, inDomain domainMask: NSSearchPathDomainMask, toItemAtURL url: NSURL) throws
  @available(OSX 10.7, *)
  func createDirectoryAtURL(url: NSURL, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
  @available(OSX 10.7, *)
  func createSymbolicLinkAtURL(url: NSURL, withDestinationURL destURL: NSURL) throws
  @available(OSX 10.5, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSFileManagerDelegate?
  @available(OSX 10.5, *)
  func setAttributes(attributes: [String : AnyObject], ofItemAtPath path: String) throws
  @available(OSX 10.5, *)
  func createDirectoryAtPath(path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [String : AnyObject]?) throws
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
  func copyItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func moveItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func linkItemAtURL(srcURL: NSURL, toURL dstURL: NSURL) throws
  @available(OSX 10.6, *)
  func removeItemAtURL(URL: NSURL) throws
  @available(OSX 10.8, *)
  func trashItemAtURL(url: NSURL, resultingItemURL outResultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
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
  func enumeratorAtPath(path: String) -> NSDirectoryEnumerator?
  @available(OSX 10.6, *)
  func enumeratorAtURL(url: NSURL, includingPropertiesForKeys keys: [String]?, options mask: NSDirectoryEnumerationOptions, errorHandler handler: ((NSURL, NSError) -> Bool)?) -> NSDirectoryEnumerator?
  func subpathsAtPath(path: String) -> [String]?
  func contentsAtPath(path: String) -> NSData?
  func createFileAtPath(path: String, contents data: NSData?, attributes attr: [String : AnyObject]?) -> Bool
  func fileSystemRepresentationWithPath(path: String) -> UnsafePointer<Int8>
  func stringWithFileSystemRepresentation(str: UnsafePointer<Int8>, length len: Int) -> String
  @available(OSX 10.6, *)
  func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName: String?, options: NSFileManagerItemReplacementOptions, resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>) throws
  @available(OSX 10.7, *)
  func setUbiquitous(flag: Bool, itemAtURL url: NSURL, destinationURL: NSURL) throws
  @available(OSX 10.7, *)
  func isUbiquitousItemAtURL(url: NSURL) -> Bool
  @available(OSX 10.7, *)
  func startDownloadingUbiquitousItemAtURL(url: NSURL) throws
  @available(OSX 10.7, *)
  func evictUbiquitousItemAtURL(url: NSURL) throws
  @available(OSX 10.7, *)
  func URLForUbiquityContainerIdentifier(containerIdentifier: String?) -> NSURL?
  @available(OSX 10.7, *)
  func URLForPublishingUbiquitousItemAtURL(url: NSURL, expirationDate outDate: AutoreleasingUnsafeMutablePointer<NSDate?>) throws -> NSURL
  @available(OSX 10.8, *)
  @NSCopying var ubiquityIdentityToken: protocol<NSCoding, NSCopying, NSObjectProtocol>? { get }
  @available(OSX 10.8, *)
  func containerURLForSecurityApplicationGroupIdentifier(groupIdentifier: String) -> NSURL?
  init()
}
extension NSObject {
}
protocol NSFileManagerDelegate : NSObjectProtocol {
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldCopyItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, copyingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldMoveItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, movingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldLinkItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, linkingItemAtURL srcURL: NSURL, toURL dstURL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldRemoveItemAtURL URL: NSURL) -> Bool
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtPath path: String) -> Bool
  @available(OSX 10.6, *)
  optional func fileManager(fileManager: NSFileManager, shouldProceedAfterError error: NSError, removingItemAtURL URL: NSURL) -> Bool
}
class NSDirectoryEnumerator : NSEnumerator {
  var fileAttributes: [String : AnyObject]? { get }
  var directoryAttributes: [String : AnyObject]? { get }
  func skipDescendents()
  @available(OSX 10.6, *)
  var level: Int { get }
  @available(OSX 10.6, *)
  func skipDescendants()
  init()
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
