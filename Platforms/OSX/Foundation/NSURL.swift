
class NSURL : NSObject, NSSecureCoding, NSCopying, NSURLHandleClient {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme scheme: String, host host: String?, path path: String)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, relativeToURL baseURL: NSURL?)
  @available(OSX 10.5, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(OSX 10.11, *)
  class func fileURLWithPath(_ path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  @available(OSX 10.11, *)
  class func fileURLWithPath(_ path: String, relativeToURL baseURL: NSURL?) -> NSURL
  @available(OSX 10.5, *)
  class func fileURLWithPath(_ path: String, isDirectory isDir: Bool) -> NSURL
  class func fileURLWithPath(_ path: String) -> NSURL
  @available(OSX 10.9, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(OSX 10.9, *)
  class func fileURLWithFileSystemRepresentation(_ path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeToURL baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(dataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(OSX 10.11, *)
  init(absoluteURLWithDataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(OSX 10.11, *)
  class func absoluteURLWithDataRepresentation(_ data: NSData, relativeToURL baseURL: NSURL?) -> NSURL
  @available(OSX 10.11, *)
  @NSCopying var dataRepresentation: NSData { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var baseURL: NSURL? { get }
  @NSCopying var absoluteURL: NSURL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: NSNumber? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(OSX 10.11, *)
  var hasDirectoryPath: Bool { get }
  @available(OSX 10.9, *)
  func getFileSystemRepresentation(_ buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(OSX 10.9, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var fileURL: Bool { get }
  @NSCopying var standardizedURL: NSURL? { get }
  @available(OSX 10.6, *)
  func checkResourceIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
  @available(OSX 10.6, *)
  func isFileReferenceURL() -> Bool
  @available(OSX 10.6, *)
  func fileReferenceURL() -> NSURL?
  @available(OSX 10.6, *)
  @NSCopying var filePathURL: NSURL? { get }
  @available(OSX 10.6, *)
  func getResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.6, *)
  func resourceValuesForKeys(_ keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.6, *)
  func setResourceValue(_ value: AnyObject?, forKey key: String) throws
  @available(OSX 10.6, *)
  func setResourceValues(_ keyedValues: [String : AnyObject]) throws
  @available(OSX 10.9, *)
  func removeCachedResourceValueForKey(_ key: String)
  @available(OSX 10.9, *)
  func removeAllCachedResourceValues()
  @available(OSX 10.9, *)
  func setTemporaryResourceValue(_ value: AnyObject?, forKey key: String)
  @available(OSX 10.6, *)
  func bookmarkDataWithOptions(_ options: NSURLBookmarkCreationOptions, includingResourceValuesForKeys keys: [String]?, relativeToURL relativeURL: NSURL?) throws -> NSData
  @available(OSX 10.6, *)
  convenience init(byResolvingBookmarkData bookmarkData: NSData, options options: NSURLBookmarkResolutionOptions, relativeToURL relativeURL: NSURL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(OSX 10.6, *)
  class func resourceValuesForKeys(_ keys: [String], fromBookmarkData bookmarkData: NSData) -> [String : AnyObject]?
  @available(OSX 10.6, *)
  class func writeBookmarkData(_ bookmarkData: NSData, toURL bookmarkFileURL: NSURL, options options: NSURLBookmarkFileCreationOptions) throws
  @available(OSX 10.6, *)
  class func bookmarkDataWithContentsOfURL(_ bookmarkFileURL: NSURL) throws -> NSData
  @available(OSX 10.10, *)
  convenience init(byResolvingAliasFileAtURL url: NSURL, options options: NSURLBookmarkResolutionOptions) throws
  @available(OSX 10.7, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(OSX 10.7, *)
  func stopAccessingSecurityScopedResource()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}

extension NSURL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
}

extension NSURL : CustomPlaygroundQuickLookable {
}
let NSURLFileScheme: String
@available(OSX 10.7, *)
let NSURLKeysOfUnsetValuesKey: String
@available(OSX 10.6, *)
let NSURLNameKey: String
@available(OSX 10.6, *)
let NSURLLocalizedNameKey: String
@available(OSX 10.6, *)
let NSURLIsRegularFileKey: String
@available(OSX 10.6, *)
let NSURLIsDirectoryKey: String
@available(OSX 10.6, *)
let NSURLIsSymbolicLinkKey: String
@available(OSX 10.6, *)
let NSURLIsVolumeKey: String
@available(OSX 10.6, *)
let NSURLIsPackageKey: String
@available(OSX 10.11, *)
let NSURLIsApplicationKey: String
@available(OSX 10.11, *)
let NSURLApplicationIsScriptableKey: String
@available(OSX 10.6, *)
let NSURLIsSystemImmutableKey: String
@available(OSX 10.6, *)
let NSURLIsUserImmutableKey: String
@available(OSX 10.6, *)
let NSURLIsHiddenKey: String
@available(OSX 10.6, *)
let NSURLHasHiddenExtensionKey: String
@available(OSX 10.6, *)
let NSURLCreationDateKey: String
@available(OSX 10.6, *)
let NSURLContentAccessDateKey: String
@available(OSX 10.6, *)
let NSURLContentModificationDateKey: String
@available(OSX 10.6, *)
let NSURLAttributeModificationDateKey: String
@available(OSX 10.6, *)
let NSURLLinkCountKey: String
@available(OSX 10.6, *)
let NSURLParentDirectoryURLKey: String
@available(OSX 10.6, *)
let NSURLVolumeURLKey: String
@available(OSX 10.6, *)
let NSURLTypeIdentifierKey: String
@available(OSX 10.6, *)
let NSURLLocalizedTypeDescriptionKey: String
@available(OSX 10.6, *)
let NSURLLabelNumberKey: String
@available(OSX 10.6, *)
let NSURLLabelColorKey: String
@available(OSX 10.6, *)
let NSURLLocalizedLabelKey: String
@available(OSX 10.6, *)
let NSURLEffectiveIconKey: String
@available(OSX 10.6, *)
let NSURLCustomIconKey: String
@available(OSX 10.7, *)
let NSURLFileResourceIdentifierKey: String
@available(OSX 10.7, *)
let NSURLVolumeIdentifierKey: String
@available(OSX 10.7, *)
let NSURLPreferredIOBlockSizeKey: String
@available(OSX 10.7, *)
let NSURLIsReadableKey: String
@available(OSX 10.7, *)
let NSURLIsWritableKey: String
@available(OSX 10.7, *)
let NSURLIsExecutableKey: String
@available(OSX 10.7, *)
let NSURLFileSecurityKey: String
@available(OSX 10.8, *)
let NSURLIsExcludedFromBackupKey: String
@available(OSX 10.9, *)
let NSURLTagNamesKey: String
@available(OSX 10.8, *)
let NSURLPathKey: String
@available(OSX 10.7, *)
let NSURLIsMountTriggerKey: String
@available(OSX 10.10, *)
let NSURLGenerationIdentifierKey: String
@available(OSX 10.10, *)
let NSURLDocumentIdentifierKey: String
@available(OSX 10.10, *)
let NSURLAddedToDirectoryDateKey: String
@available(OSX 10.10, *)
let NSURLQuarantinePropertiesKey: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeKey: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeNamedPipe: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeCharacterSpecial: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeDirectory: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeBlockSpecial: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeRegular: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeSymbolicLink: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeSocket: String
@available(OSX 10.7, *)
let NSURLFileResourceTypeUnknown: String
@available(OSX 10.10, *)
let NSURLThumbnailDictionaryKey: String
@available(OSX 10.10, *)
let NSURLThumbnailKey: String
@available(OSX 10.10, *)
let NSThumbnail1024x1024SizeKey: String
@available(OSX 10.6, *)
let NSURLFileSizeKey: String
@available(OSX 10.6, *)
let NSURLFileAllocatedSizeKey: String
@available(OSX 10.7, *)
let NSURLTotalFileSizeKey: String
@available(OSX 10.7, *)
let NSURLTotalFileAllocatedSizeKey: String
@available(OSX 10.6, *)
let NSURLIsAliasFileKey: String
@available(OSX 10.6, *)
let NSURLVolumeLocalizedFormatDescriptionKey: String
@available(OSX 10.6, *)
let NSURLVolumeTotalCapacityKey: String
@available(OSX 10.6, *)
let NSURLVolumeAvailableCapacityKey: String
@available(OSX 10.6, *)
let NSURLVolumeResourceCountKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsPersistentIDsKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsSymbolicLinksKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsHardLinksKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsJournalingKey: String
@available(OSX 10.6, *)
let NSURLVolumeIsJournalingKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsSparseFilesKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsZeroRunsKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsCaseSensitiveNamesKey: String
@available(OSX 10.6, *)
let NSURLVolumeSupportsCasePreservedNamesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsRootDirectoryDatesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsVolumeSizesKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsRenamingKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsAdvisoryFileLockingKey: String
@available(OSX 10.7, *)
let NSURLVolumeSupportsExtendedSecurityKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsBrowsableKey: String
@available(OSX 10.7, *)
let NSURLVolumeMaximumFileSizeKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsEjectableKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsRemovableKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsInternalKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsAutomountedKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsLocalKey: String
@available(OSX 10.7, *)
let NSURLVolumeIsReadOnlyKey: String
@available(OSX 10.7, *)
let NSURLVolumeCreationDateKey: String
@available(OSX 10.7, *)
let NSURLVolumeURLForRemountingKey: String
@available(OSX 10.7, *)
let NSURLVolumeUUIDStringKey: String
@available(OSX 10.7, *)
let NSURLVolumeNameKey: String
@available(OSX 10.7, *)
let NSURLVolumeLocalizedNameKey: String
@available(OSX 10.7, *)
let NSURLIsUbiquitousItemKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let NSURLUbiquitousItemIsUploadingKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let NSURLUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let NSURLUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let NSURLUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.6, *)
struct NSURLBookmarkCreationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: NSURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: NSURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: NSURLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var SecurityScopeAllowOnlyReadAccess: NSURLBookmarkCreationOptions { get }
}
@available(OSX 10.6, *)
struct NSURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: NSURLBookmarkResolutionOptions { get }
  static var WithoutMounting: NSURLBookmarkResolutionOptions { get }
  @available(OSX 10.7, *)
  static var WithSecurityScope: NSURLBookmarkResolutionOptions { get }
}
typealias NSURLBookmarkFileCreationOptions = Int
extension NSURL {
  @available(OSX 10.10, *)
  func getPromisedItemResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.10, *)
  func promisedItemResourceValuesForKeys(_ keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.10, *)
  func checkPromisedItemIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
}
@available(OSX 10.10, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name name: String, value value: String?)
  var name: String { get }
  var value: String? { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.9, *)
class NSURLComponents : NSObject, NSCopying {
  init?(URL url: NSURL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var URL: NSURL? { get }
  func URLRelativeToURL(_ baseURL: NSURL?) -> NSURL?
  @available(OSX 10.10, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: NSNumber?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(OSX 10.11, *)
  var rangeOfScheme: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfUser: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPassword: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfHost: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPort: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfPath: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfQuery: NSRange { get }
  @available(OSX 10.11, *)
  var rangeOfFragment: NSRange { get }
  @available(OSX 10.10, *)
  var queryItems: [NSURLQueryItem]?
  @available(OSX 10.9, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension NSCharacterSet {
  @available(OSX 10.9, *)
  class func URLUserAllowedCharacterSet() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func URLPasswordAllowedCharacterSet() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func URLHostAllowedCharacterSet() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func URLPathAllowedCharacterSet() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func URLQueryAllowedCharacterSet() -> NSCharacterSet
  @available(OSX 10.9, *)
  class func URLFragmentAllowedCharacterSet() -> NSCharacterSet
}
extension NSString {
  @available(OSX 10.9, *)
  func stringByAddingPercentEncodingWithAllowedCharacters(_ allowedCharacters: NSCharacterSet) -> String?
  @available(OSX 10.9, *)
  var stringByRemovingPercentEncoding: String? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func stringByAddingPercentEscapesUsingEncoding(_ enc: UInt) -> String?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func stringByReplacingPercentEscapesUsingEncoding(_ enc: UInt) -> String?
}
extension NSURL {
  @available(OSX 10.6, *)
  class func fileURLWithPathComponents(_ components: [String]) -> NSURL?
  @available(OSX 10.6, *)
  var pathComponents: [String]? { get }
  @available(OSX 10.6, *)
  var lastPathComponent: String? { get }
  @available(OSX 10.6, *)
  var pathExtension: String? { get }
  @available(OSX 10.6, *)
  func URLByAppendingPathComponent(_ pathComponent: String) -> NSURL
  @available(OSX 10.7, *)
  func URLByAppendingPathComponent(_ pathComponent: String, isDirectory isDirectory: Bool) -> NSURL
  @available(OSX 10.6, *)
  @NSCopying var URLByDeletingLastPathComponent: NSURL? { get }
  @available(OSX 10.6, *)
  func URLByAppendingPathExtension(_ pathExtension: String) -> NSURL
  @available(OSX 10.6, *)
  @NSCopying var URLByDeletingPathExtension: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var URLByStandardizingPath: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var URLByResolvingSymlinksInPath: NSURL? { get }
}
@available(OSX 10.7, *)
class NSFileSecurity : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSObject {
}
extension NSURL {
}
