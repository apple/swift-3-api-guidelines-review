
class URL : Object, SecureCoding, Copying {
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(tvOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(tvOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(tvOS 9.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(tvOS 9.0, *)
  class func fileURLWithPath(path: String, relativeTo baseURL: URL?) -> URL
  @available(tvOS 2.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> URL
  class func fileURLWithPath(path: String) -> URL
  @available(tvOS 7.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(tvOS 7.0, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  class func absoluteURLWithDataRepresentation(data: Data, relativeTo baseURL: URL?) -> URL
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(tvOS 7.0, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(tvOS 7.0, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: URL? { get }
  @available(tvOS 4.0, *)
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  @available(tvOS 4.0, *)
  func isFileReferenceURL() -> Bool
  @available(tvOS 4.0, *)
  func fileReference() -> URL?
  @available(tvOS 4.0, *)
  @NSCopying var filePath: URL? { get }
  @available(tvOS 4.0, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(tvOS 4.0, *)
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(tvOS 4.0, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(tvOS 4.0, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(tvOS 7.0, *)
  func removeCachedResourceValueForKey(key: String)
  @available(tvOS 7.0, *)
  func removeAllCachedResourceValues()
  @available(tvOS 7.0, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(tvOS 4.0, *)
  func bookmarkData(options options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  @available(tvOS 4.0, *)
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(tvOS 4.0, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  @available(tvOS 4.0, *)
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  @available(tvOS 4.0, *)
  class func bookmarkDataWithContentsOf(bookmarkFileURL: URL) throws -> Data
  @available(tvOS 8.0, *)
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  @available(tvOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(tvOS 8.0, *)
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
@available(tvOS 5.0, *)
let urlKeysOfUnsetValuesKey: String
@available(tvOS 4.0, *)
let urlNameKey: String
@available(tvOS 4.0, *)
let urlLocalizedNameKey: String
@available(tvOS 4.0, *)
let urlisRegularFileKey: String
@available(tvOS 4.0, *)
let urlisDirectoryKey: String
@available(tvOS 4.0, *)
let urlisSymbolicLinkKey: String
@available(tvOS 4.0, *)
let urlisVolumeKey: String
@available(tvOS 4.0, *)
let urlisPackageKey: String
@available(tvOS 9.0, *)
let urlisApplicationKey: String
@available(tvOS 4.0, *)
let urlisSystemImmutableKey: String
@available(tvOS 4.0, *)
let urlisUserImmutableKey: String
@available(tvOS 4.0, *)
let urlisHiddenKey: String
@available(tvOS 4.0, *)
let urlHasHiddenExtensionKey: String
@available(tvOS 4.0, *)
let urlCreationDateKey: String
@available(tvOS 4.0, *)
let urlContentAccessDateKey: String
@available(tvOS 4.0, *)
let urlContentModificationDateKey: String
@available(tvOS 4.0, *)
let urlAttributeModificationDateKey: String
@available(tvOS 4.0, *)
let urlLinkCountKey: String
@available(tvOS 4.0, *)
let urlParentDirectoryURLKey: String
@available(tvOS 4.0, *)
let urlVolumeURLKey: String
@available(tvOS 4.0, *)
let urlTypeIdentifierKey: String
@available(tvOS 4.0, *)
let urlLocalizedTypeDescriptionKey: String
@available(tvOS 4.0, *)
let urlLabelNumberKey: String
@available(tvOS 4.0, *)
let urlLabelColorKey: String
@available(tvOS 4.0, *)
let urlLocalizedLabelKey: String
@available(tvOS 4.0, *)
let urlEffectiveIconKey: String
@available(tvOS 4.0, *)
let urlCustomIconKey: String
@available(tvOS 5.0, *)
let urlFileResourceIdentifierKey: String
@available(tvOS 5.0, *)
let urlVolumeIdentifierKey: String
@available(tvOS 5.0, *)
let urlPreferredIOBlockSizeKey: String
@available(tvOS 5.0, *)
let urlisReadableKey: String
@available(tvOS 5.0, *)
let urlisWritableKey: String
@available(tvOS 5.0, *)
let urlisExecutableKey: String
@available(tvOS 5.0, *)
let urlFileSecurityKey: String
@available(tvOS 5.1, *)
let urlisExcludedFromBackupKey: String
@available(tvOS 6.0, *)
let urlPathKey: String
@available(tvOS 5.0, *)
let urlisMountTriggerKey: String
@available(tvOS 8.0, *)
let urlGenerationIdentifierKey: String
@available(tvOS 8.0, *)
let urlDocumentIdentifierKey: String
@available(tvOS 8.0, *)
let urlAddedToDirectoryDateKey: String
@available(tvOS 5.0, *)
let urlFileResourceTypeKey: String
@available(tvOS 5.0, *)
let urlFileResourceTypeNamedPipe: String
@available(tvOS 5.0, *)
let urlFileResourceTypeCharacterSpecial: String
@available(tvOS 5.0, *)
let urlFileResourceTypeDirectory: String
@available(tvOS 5.0, *)
let urlFileResourceTypeBlockSpecial: String
@available(tvOS 5.0, *)
let urlFileResourceTypeRegular: String
@available(tvOS 5.0, *)
let urlFileResourceTypeSymbolicLink: String
@available(tvOS 5.0, *)
let urlFileResourceTypeSocket: String
@available(tvOS 5.0, *)
let urlFileResourceTypeUnknown: String
@available(tvOS 8.0, *)
let urlThumbnailDictionaryKey: String
@available(tvOS 8.0, *)
let thumbnail1024x1024SizeKey: String
@available(tvOS 4.0, *)
let urlFileSizeKey: String
@available(tvOS 4.0, *)
let urlFileAllocatedSizeKey: String
@available(tvOS 5.0, *)
let urlTotalFileSizeKey: String
@available(tvOS 5.0, *)
let urlTotalFileAllocatedSizeKey: String
@available(tvOS 4.0, *)
let urlisAliasFileKey: String
@available(tvOS 9.0, *)
let urlFileProtectionKey: String
@available(tvOS 9.0, *)
let urlFileProtectionNone: String
@available(tvOS 9.0, *)
let urlFileProtectionComplete: String
@available(tvOS 9.0, *)
let urlFileProtectionCompleteUnlessOpen: String
@available(tvOS 9.0, *)
let urlFileProtectionCompleteUntilFirstUserAuthentication: String
@available(tvOS 4.0, *)
let urlVolumeLocalizedFormatDescriptionKey: String
@available(tvOS 4.0, *)
let urlVolumeTotalCapacityKey: String
@available(tvOS 4.0, *)
let urlVolumeAvailableCapacityKey: String
@available(tvOS 4.0, *)
let urlVolumeResourceCountKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsPersistentIDsKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsSymbolicLinksKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsHardLinksKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsJournalingKey: String
@available(tvOS 4.0, *)
let urlVolumeIsJournalingKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsSparseFilesKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsZeroRunsKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsCaseSensitiveNamesKey: String
@available(tvOS 4.0, *)
let urlVolumeSupportsCasePreservedNamesKey: String
@available(tvOS 5.0, *)
let urlVolumeSupportsRootDirectoryDatesKey: String
@available(tvOS 5.0, *)
let urlVolumeSupportsVolumeSizesKey: String
@available(tvOS 5.0, *)
let urlVolumeSupportsRenamingKey: String
@available(tvOS 5.0, *)
let urlVolumeSupportsAdvisoryFileLockingKey: String
@available(tvOS 5.0, *)
let urlVolumeSupportsExtendedSecurityKey: String
@available(tvOS 5.0, *)
let urlVolumeIsBrowsableKey: String
@available(tvOS 5.0, *)
let urlVolumeMaximumFileSizeKey: String
@available(tvOS 5.0, *)
let urlVolumeIsEjectableKey: String
@available(tvOS 5.0, *)
let urlVolumeIsRemovableKey: String
@available(tvOS 5.0, *)
let urlVolumeIsInternalKey: String
@available(tvOS 5.0, *)
let urlVolumeIsAutomountedKey: String
@available(tvOS 5.0, *)
let urlVolumeIsLocalKey: String
@available(tvOS 5.0, *)
let urlVolumeIsReadOnlyKey: String
@available(tvOS 5.0, *)
let urlVolumeCreationDateKey: String
@available(tvOS 5.0, *)
let urlVolumeURLForRemountingKey: String
@available(tvOS 5.0, *)
let urlVolumeUUIDStringKey: String
@available(tvOS 5.0, *)
let urlVolumeNameKey: String
@available(tvOS 5.0, *)
let urlVolumeLocalizedNameKey: String
@available(tvOS 5.0, *)
let urlisUbiquitousItemKey: String
@available(tvOS 5.0, *)
let urlUbiquitousItemHasUnresolvedConflictsKey: String
@available(tvOS 5.0, *)
let urlUbiquitousItemIsDownloadingKey: String
@available(tvOS 5.0, *)
let urlUbiquitousItemIsUploadedKey: String
@available(tvOS 5.0, *)
let urlUbiquitousItemIsUploadingKey: String
@available(tvOS 7.0, *)
let urlUbiquitousItemDownloadingStatusKey: String
@available(tvOS 7.0, *)
let urlUbiquitousItemDownloadingErrorKey: String
@available(tvOS 7.0, *)
let urlUbiquitousItemUploadingErrorKey: String
@available(tvOS 8.0, *)
let urlUbiquitousItemDownloadRequestedKey: String
@available(tvOS 8.0, *)
let urlUbiquitousItemContainerDisplayNameKey: String
@available(tvOS 7.0, *)
let urlUbiquitousItemDownloadingStatusNotDownloaded: String
@available(tvOS 7.0, *)
let urlUbiquitousItemDownloadingStatusDownloaded: String
@available(tvOS 7.0, *)
let urlUbiquitousItemDownloadingStatusCurrent: String
@available(tvOS 4.0, *)
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: URLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: URLBookmarkCreationOptions { get }
}
@available(tvOS 4.0, *)
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: URLBookmarkResolutionOptions { get }
  static var WithoutMounting: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  @available(tvOS 8.0, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(tvOS 8.0, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(tvOS 8.0, *)
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
@available(tvOS 8.0, *)
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 7.0, *)
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelativeTo(baseURL: URL?) -> URL?
  @available(tvOS 8.0, *)
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
  @available(tvOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(tvOS 8.0, *)
  var queryItems: [URLQueryItem]?
  @available(tvOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  @available(tvOS 7.0, *)
  class func urlUserAllowed() -> CharacterSet
  @available(tvOS 7.0, *)
  class func urlPasswordAllowed() -> CharacterSet
  @available(tvOS 7.0, *)
  class func urlHostAllowed() -> CharacterSet
  @available(tvOS 7.0, *)
  class func urlPathAllowed() -> CharacterSet
  @available(tvOS 7.0, *)
  class func urlQueryAllowed() -> CharacterSet
  @available(tvOS 7.0, *)
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  @available(tvOS 7.0, *)
  func addingPercentEncodingWithAllowedCharacters(allowedCharacters: CharacterSet) -> String?
  @available(tvOS 7.0, *)
  var removingPercentEncoding: String? { get }
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension URL {
  @available(tvOS 4.0, *)
  class func fileURLWithPathComponents(components: [String]) -> URL?
  @available(tvOS 4.0, *)
  var pathComponents: [String]? { get }
  @available(tvOS 4.0, *)
  var lastPathComponent: String? { get }
  @available(tvOS 4.0, *)
  var pathExtension: String? { get }
  @available(tvOS 4.0, *)
  func appendingPathComponent(pathComponent: String) -> URL
  @available(tvOS 5.0, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @available(tvOS 4.0, *)
  @NSCopying var deletingLastPathComponent: URL? { get }
  @available(tvOS 4.0, *)
  func appendingPathExtension(pathExtension: String) -> URL
  @available(tvOS 4.0, *)
  @NSCopying var deletingPathExtension: URL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var standardizingPath: URL? { get }
  @available(tvOS 4.0, *)
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
@available(tvOS 5.0, *)
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  @available(tvOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
}
