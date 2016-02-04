
class URL : Object, SecureCoding, Copying {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(iOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, relativeTo baseURL: URL?) -> URL
  @available(iOS 2.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> URL
  class func fileURLWithPath(path: String) -> URL
  @available(iOS 7.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(iOS 7.0, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  class func absoluteURLWithDataRepresentation(data: Data, relativeTo baseURL: URL?) -> URL
  @available(iOS 9.0, *)
  @NSCopying var dataRepresentation: Data { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var base: URL? { get }
  @NSCopying var absolute: URL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: Number? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(iOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(iOS 7.0, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(iOS 7.0, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: URL? { get }
  @available(iOS 4.0, *)
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  @available(iOS 4.0, *)
  func isFileReferenceURL() -> Bool
  @available(iOS 4.0, *)
  func fileReference() -> URL?
  @available(iOS 4.0, *)
  @NSCopying var filePath: URL? { get }
  @available(iOS 4.0, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 4.0, *)
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 4.0, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(iOS 4.0, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(iOS 7.0, *)
  func removeCachedResourceValueForKey(key: String)
  @available(iOS 7.0, *)
  func removeAllCachedResourceValues()
  @available(iOS 7.0, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(iOS 4.0, *)
  func bookmarkData(options options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  @available(iOS 4.0, *)
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(iOS 4.0, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  @available(iOS 4.0, *)
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  @available(iOS 4.0, *)
  class func bookmarkDataWithContentsOf(bookmarkFileURL: URL) throws -> Data
  @available(iOS 8.0, *)
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  @available(iOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(iOS 8.0, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension URL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}

extension URL : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
let urlFileScheme: String
@available(iOS 5.0, *)
let urlKeysOfUnsetValuesKey: String
@available(iOS 4.0, *)
let urlNameKey: String
@available(iOS 4.0, *)
let urlLocalizedNameKey: String
@available(iOS 4.0, *)
let urlisRegularFileKey: String
@available(iOS 4.0, *)
let urlisDirectoryKey: String
@available(iOS 4.0, *)
let urlisSymbolicLinkKey: String
@available(iOS 4.0, *)
let urlisVolumeKey: String
@available(iOS 4.0, *)
let urlisPackageKey: String
@available(iOS 9.0, *)
let urlisApplicationKey: String
@available(iOS 4.0, *)
let urlisSystemImmutableKey: String
@available(iOS 4.0, *)
let urlisUserImmutableKey: String
@available(iOS 4.0, *)
let urlisHiddenKey: String
@available(iOS 4.0, *)
let urlHasHiddenExtensionKey: String
@available(iOS 4.0, *)
let urlCreationDateKey: String
@available(iOS 4.0, *)
let urlContentAccessDateKey: String
@available(iOS 4.0, *)
let urlContentModificationDateKey: String
@available(iOS 4.0, *)
let urlAttributeModificationDateKey: String
@available(iOS 4.0, *)
let urlLinkCountKey: String
@available(iOS 4.0, *)
let urlParentDirectoryURLKey: String
@available(iOS 4.0, *)
let urlVolumeURLKey: String
@available(iOS 4.0, *)
let urlTypeIdentifierKey: String
@available(iOS 4.0, *)
let urlLocalizedTypeDescriptionKey: String
@available(iOS 4.0, *)
let urlLabelNumberKey: String
@available(iOS 4.0, *)
let urlLabelColorKey: String
@available(iOS 4.0, *)
let urlLocalizedLabelKey: String
@available(iOS 4.0, *)
let urlEffectiveIconKey: String
@available(iOS 4.0, *)
let urlCustomIconKey: String
@available(iOS 5.0, *)
let urlFileResourceIdentifierKey: String
@available(iOS 5.0, *)
let urlVolumeIdentifierKey: String
@available(iOS 5.0, *)
let urlPreferredIOBlockSizeKey: String
@available(iOS 5.0, *)
let urlisReadableKey: String
@available(iOS 5.0, *)
let urlisWritableKey: String
@available(iOS 5.0, *)
let urlisExecutableKey: String
@available(iOS 5.0, *)
let urlFileSecurityKey: String
@available(iOS 5.1, *)
let urlisExcludedFromBackupKey: String
@available(iOS 6.0, *)
let urlPathKey: String
@available(iOS 5.0, *)
let urlisMountTriggerKey: String
@available(iOS 8.0, *)
let urlGenerationIdentifierKey: String
@available(iOS 8.0, *)
let urlDocumentIdentifierKey: String
@available(iOS 8.0, *)
let urlAddedToDirectoryDateKey: String
@available(iOS 5.0, *)
let urlFileResourceTypeKey: String
@available(iOS 5.0, *)
let urlFileResourceTypeNamedPipe: String
@available(iOS 5.0, *)
let urlFileResourceTypeCharacterSpecial: String
@available(iOS 5.0, *)
let urlFileResourceTypeDirectory: String
@available(iOS 5.0, *)
let urlFileResourceTypeBlockSpecial: String
@available(iOS 5.0, *)
let urlFileResourceTypeRegular: String
@available(iOS 5.0, *)
let urlFileResourceTypeSymbolicLink: String
@available(iOS 5.0, *)
let urlFileResourceTypeSocket: String
@available(iOS 5.0, *)
let urlFileResourceTypeUnknown: String
@available(iOS 8.0, *)
let urlThumbnailDictionaryKey: String
@available(iOS 8.0, *)
let thumbnail1024x1024SizeKey: String
@available(iOS 4.0, *)
let urlFileSizeKey: String
@available(iOS 4.0, *)
let urlFileAllocatedSizeKey: String
@available(iOS 5.0, *)
let urlTotalFileSizeKey: String
@available(iOS 5.0, *)
let urlTotalFileAllocatedSizeKey: String
@available(iOS 4.0, *)
let urlisAliasFileKey: String
@available(iOS 9.0, *)
let urlFileProtectionKey: String
@available(iOS 9.0, *)
let urlFileProtectionNone: String
@available(iOS 9.0, *)
let urlFileProtectionComplete: String
@available(iOS 9.0, *)
let urlFileProtectionCompleteUnlessOpen: String
@available(iOS 9.0, *)
let urlFileProtectionCompleteUntilFirstUserAuthentication: String
@available(iOS 4.0, *)
let urlVolumeLocalizedFormatDescriptionKey: String
@available(iOS 4.0, *)
let urlVolumeTotalCapacityKey: String
@available(iOS 4.0, *)
let urlVolumeAvailableCapacityKey: String
@available(iOS 4.0, *)
let urlVolumeResourceCountKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsPersistentIDsKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsSymbolicLinksKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsHardLinksKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsJournalingKey: String
@available(iOS 4.0, *)
let urlVolumeIsJournalingKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsSparseFilesKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsZeroRunsKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsCaseSensitiveNamesKey: String
@available(iOS 4.0, *)
let urlVolumeSupportsCasePreservedNamesKey: String
@available(iOS 5.0, *)
let urlVolumeSupportsRootDirectoryDatesKey: String
@available(iOS 5.0, *)
let urlVolumeSupportsVolumeSizesKey: String
@available(iOS 5.0, *)
let urlVolumeSupportsRenamingKey: String
@available(iOS 5.0, *)
let urlVolumeSupportsAdvisoryFileLockingKey: String
@available(iOS 5.0, *)
let urlVolumeSupportsExtendedSecurityKey: String
@available(iOS 5.0, *)
let urlVolumeIsBrowsableKey: String
@available(iOS 5.0, *)
let urlVolumeMaximumFileSizeKey: String
@available(iOS 5.0, *)
let urlVolumeIsEjectableKey: String
@available(iOS 5.0, *)
let urlVolumeIsRemovableKey: String
@available(iOS 5.0, *)
let urlVolumeIsInternalKey: String
@available(iOS 5.0, *)
let urlVolumeIsAutomountedKey: String
@available(iOS 5.0, *)
let urlVolumeIsLocalKey: String
@available(iOS 5.0, *)
let urlVolumeIsReadOnlyKey: String
@available(iOS 5.0, *)
let urlVolumeCreationDateKey: String
@available(iOS 5.0, *)
let urlVolumeURLForRemountingKey: String
@available(iOS 5.0, *)
let urlVolumeUUIDStringKey: String
@available(iOS 5.0, *)
let urlVolumeNameKey: String
@available(iOS 5.0, *)
let urlVolumeLocalizedNameKey: String
@available(iOS 5.0, *)
let urlisUbiquitousItemKey: String
@available(iOS 5.0, *)
let urlUbiquitousItemHasUnresolvedConflictsKey: String
@available(iOS 5.0, *)
let urlUbiquitousItemIsDownloadingKey: String
@available(iOS 5.0, *)
let urlUbiquitousItemIsUploadedKey: String
@available(iOS 5.0, *)
let urlUbiquitousItemIsUploadingKey: String
@available(iOS 7.0, *)
let urlUbiquitousItemDownloadingStatusKey: String
@available(iOS 7.0, *)
let urlUbiquitousItemDownloadingErrorKey: String
@available(iOS 7.0, *)
let urlUbiquitousItemUploadingErrorKey: String
@available(iOS 8.0, *)
let urlUbiquitousItemDownloadRequestedKey: String
@available(iOS 8.0, *)
let urlUbiquitousItemContainerDisplayNameKey: String
@available(iOS 7.0, *)
let urlUbiquitousItemDownloadingStatusNotDownloaded: String
@available(iOS 7.0, *)
let urlUbiquitousItemDownloadingStatusDownloaded: String
@available(iOS 7.0, *)
let urlUbiquitousItemDownloadingStatusCurrent: String
@available(iOS 4.0, *)
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: URLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: URLBookmarkCreationOptions { get }
}
@available(iOS 4.0, *)
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: URLBookmarkResolutionOptions { get }
  static var WithoutMounting: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  @available(iOS 8.0, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 8.0, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 8.0, *)
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
@available(iOS 8.0, *)
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 7.0, *)
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelativeTo(baseURL: URL?) -> URL?
  @available(iOS 8.0, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: Number?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(iOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(iOS 8.0, *)
  var queryItems: [URLQueryItem]?
  @available(iOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  @available(iOS 7.0, *)
  class func urlUserAllowed() -> CharacterSet
  @available(iOS 7.0, *)
  class func urlPasswordAllowed() -> CharacterSet
  @available(iOS 7.0, *)
  class func urlHostAllowed() -> CharacterSet
  @available(iOS 7.0, *)
  class func urlPathAllowed() -> CharacterSet
  @available(iOS 7.0, *)
  class func urlQueryAllowed() -> CharacterSet
  @available(iOS 7.0, *)
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  @available(iOS 7.0, *)
  func addingPercentEncodingWithAllowedCharacters(allowedCharacters: CharacterSet) -> String?
  @available(iOS 7.0, *)
  var removingPercentEncoding: String? { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension URL {
  @available(iOS 4.0, *)
  class func fileURLWithPathComponents(components: [String]) -> URL?
  @available(iOS 4.0, *)
  var pathComponents: [String]? { get }
  @available(iOS 4.0, *)
  var lastPathComponent: String? { get }
  @available(iOS 4.0, *)
  var pathExtension: String? { get }
  @available(iOS 4.0, *)
  func appendingPathComponent(pathComponent: String) -> URL
  @available(iOS 5.0, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @available(iOS 4.0, *)
  @NSCopying var deletingLastPathComponent: URL? { get }
  @available(iOS 4.0, *)
  func appendingPathExtension(pathExtension: String) -> URL
  @available(iOS 4.0, *)
  @NSCopying var deletingPathExtension: URL? { get }
  @available(iOS 4.0, *)
  @NSCopying var standardizingPath: URL? { get }
  @available(iOS 4.0, *)
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
@available(iOS 5.0, *)
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 5.0, *)
  func encodeWith(aCoder: Coder)
}
