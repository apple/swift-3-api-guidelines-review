
class URL : Object, SecureCoding, Copying, URLHandleClient {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(OSX 10.5, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(OSX 10.11, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.11, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.5, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(OSX 10.9, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(OSX 10.9, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(OSX 10.11, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  var hasDirectoryPath: Bool { get }
  @available(OSX 10.9, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(OSX 10.9, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: URL? { get }
  @available(OSX 10.6, *)
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  @available(OSX 10.6, *)
  func isFileReferenceURL() -> Bool
  @available(OSX 10.6, *)
  func fileReference() -> URL?
  @available(OSX 10.6, *)
  @NSCopying var filePath: URL? { get }
  @available(OSX 10.6, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.6, *)
  func resourceValues(forKeys keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.6, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(OSX 10.6, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(OSX 10.9, *)
  func removeCachedResourceValue(forKey key: String)
  @available(OSX 10.9, *)
  func removeAllCachedResourceValues()
  @available(OSX 10.9, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(OSX 10.6, *)
  func bookmarkData(options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  @available(OSX 10.6, *)
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(OSX 10.6, *)
  class func resourceValues(forKeys keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  @available(OSX 10.6, *)
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  @available(OSX 10.6, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(OSX 10.10, *)
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  @available(OSX 10.7, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(OSX 10.7, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
}

extension URL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}

extension URL : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
let urlFileScheme: String
@available(OSX 10.7, *)
let urlKeysOfUnsetValuesKey: String
@available(OSX 10.6, *)
let urlNameKey: String
@available(OSX 10.6, *)
let urlLocalizedNameKey: String
@available(OSX 10.6, *)
let urlisRegularFileKey: String
@available(OSX 10.6, *)
let urlisDirectoryKey: String
@available(OSX 10.6, *)
let urlisSymbolicLinkKey: String
@available(OSX 10.6, *)
let urlisVolumeKey: String
@available(OSX 10.6, *)
let urlisPackageKey: String
@available(OSX 10.11, *)
let urlisApplicationKey: String
@available(OSX 10.11, *)
let urlApplicationIsScriptableKey: String
@available(OSX 10.6, *)
let urlisSystemImmutableKey: String
@available(OSX 10.6, *)
let urlisUserImmutableKey: String
@available(OSX 10.6, *)
let urlisHiddenKey: String
@available(OSX 10.6, *)
let urlHasHiddenExtensionKey: String
@available(OSX 10.6, *)
let urlCreationDateKey: String
@available(OSX 10.6, *)
let urlContentAccessDateKey: String
@available(OSX 10.6, *)
let urlContentModificationDateKey: String
@available(OSX 10.6, *)
let urlAttributeModificationDateKey: String
@available(OSX 10.6, *)
let urlLinkCountKey: String
@available(OSX 10.6, *)
let urlParentDirectoryURLKey: String
@available(OSX 10.6, *)
let urlVolumeURLKey: String
@available(OSX 10.6, *)
let urlTypeIdentifierKey: String
@available(OSX 10.6, *)
let urlLocalizedTypeDescriptionKey: String
@available(OSX 10.6, *)
let urlLabelNumberKey: String
@available(OSX 10.6, *)
let urlLabelColorKey: String
@available(OSX 10.6, *)
let urlLocalizedLabelKey: String
@available(OSX 10.6, *)
let urlEffectiveIconKey: String
@available(OSX 10.6, *)
let urlCustomIconKey: String
@available(OSX 10.7, *)
let urlFileResourceIdentifierKey: String
@available(OSX 10.7, *)
let urlVolumeIdentifierKey: String
@available(OSX 10.7, *)
let urlPreferredIOBlockSizeKey: String
@available(OSX 10.7, *)
let urlisReadableKey: String
@available(OSX 10.7, *)
let urlisWritableKey: String
@available(OSX 10.7, *)
let urlisExecutableKey: String
@available(OSX 10.7, *)
let urlFileSecurityKey: String
@available(OSX 10.8, *)
let urlisExcludedFromBackupKey: String
@available(OSX 10.9, *)
let urlTagNamesKey: String
@available(OSX 10.8, *)
let urlPathKey: String
@available(OSX 10.7, *)
let urlisMountTriggerKey: String
@available(OSX 10.10, *)
let urlGenerationIdentifierKey: String
@available(OSX 10.10, *)
let urlDocumentIdentifierKey: String
@available(OSX 10.10, *)
let urlAddedToDirectoryDateKey: String
@available(OSX 10.10, *)
let urlQuarantinePropertiesKey: String
@available(OSX 10.7, *)
let urlFileResourceTypeKey: String
@available(OSX 10.7, *)
let urlFileResourceTypeNamedPipe: String
@available(OSX 10.7, *)
let urlFileResourceTypeCharacterSpecial: String
@available(OSX 10.7, *)
let urlFileResourceTypeDirectory: String
@available(OSX 10.7, *)
let urlFileResourceTypeBlockSpecial: String
@available(OSX 10.7, *)
let urlFileResourceTypeRegular: String
@available(OSX 10.7, *)
let urlFileResourceTypeSymbolicLink: String
@available(OSX 10.7, *)
let urlFileResourceTypeSocket: String
@available(OSX 10.7, *)
let urlFileResourceTypeUnknown: String
@available(OSX 10.10, *)
let urlThumbnailDictionaryKey: String
@available(OSX 10.10, *)
let urlThumbnailKey: String
@available(OSX 10.10, *)
let thumbnail1024x1024SizeKey: String
@available(OSX 10.6, *)
let urlFileSizeKey: String
@available(OSX 10.6, *)
let urlFileAllocatedSizeKey: String
@available(OSX 10.7, *)
let urlTotalFileSizeKey: String
@available(OSX 10.7, *)
let urlTotalFileAllocatedSizeKey: String
@available(OSX 10.6, *)
let urlisAliasFileKey: String
@available(OSX 10.6, *)
let urlVolumeLocalizedFormatDescriptionKey: String
@available(OSX 10.6, *)
let urlVolumeTotalCapacityKey: String
@available(OSX 10.6, *)
let urlVolumeAvailableCapacityKey: String
@available(OSX 10.6, *)
let urlVolumeResourceCountKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsPersistentIDsKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsSymbolicLinksKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsHardLinksKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsJournalingKey: String
@available(OSX 10.6, *)
let urlVolumeIsJournalingKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsSparseFilesKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsZeroRunsKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsCaseSensitiveNamesKey: String
@available(OSX 10.6, *)
let urlVolumeSupportsCasePreservedNamesKey: String
@available(OSX 10.7, *)
let urlVolumeSupportsRootDirectoryDatesKey: String
@available(OSX 10.7, *)
let urlVolumeSupportsVolumeSizesKey: String
@available(OSX 10.7, *)
let urlVolumeSupportsRenamingKey: String
@available(OSX 10.7, *)
let urlVolumeSupportsAdvisoryFileLockingKey: String
@available(OSX 10.7, *)
let urlVolumeSupportsExtendedSecurityKey: String
@available(OSX 10.7, *)
let urlVolumeIsBrowsableKey: String
@available(OSX 10.7, *)
let urlVolumeMaximumFileSizeKey: String
@available(OSX 10.7, *)
let urlVolumeIsEjectableKey: String
@available(OSX 10.7, *)
let urlVolumeIsRemovableKey: String
@available(OSX 10.7, *)
let urlVolumeIsInternalKey: String
@available(OSX 10.7, *)
let urlVolumeIsAutomountedKey: String
@available(OSX 10.7, *)
let urlVolumeIsLocalKey: String
@available(OSX 10.7, *)
let urlVolumeIsReadOnlyKey: String
@available(OSX 10.7, *)
let urlVolumeCreationDateKey: String
@available(OSX 10.7, *)
let urlVolumeURLForRemountingKey: String
@available(OSX 10.7, *)
let urlVolumeUUIDStringKey: String
@available(OSX 10.7, *)
let urlVolumeNameKey: String
@available(OSX 10.7, *)
let urlVolumeLocalizedNameKey: String
@available(OSX 10.7, *)
let urlisUbiquitousItemKey: String
@available(OSX 10.7, *)
let urlUbiquitousItemHasUnresolvedConflictsKey: String
@available(OSX 10.7, *)
let urlUbiquitousItemIsDownloadingKey: String
@available(OSX 10.7, *)
let urlUbiquitousItemIsUploadedKey: String
@available(OSX 10.7, *)
let urlUbiquitousItemIsUploadingKey: String
@available(OSX 10.9, *)
let urlUbiquitousItemDownloadingStatusKey: String
@available(OSX 10.9, *)
let urlUbiquitousItemDownloadingErrorKey: String
@available(OSX 10.9, *)
let urlUbiquitousItemUploadingErrorKey: String
@available(OSX 10.10, *)
let urlUbiquitousItemDownloadRequestedKey: String
@available(OSX 10.10, *)
let urlUbiquitousItemContainerDisplayNameKey: String
@available(OSX 10.9, *)
let urlUbiquitousItemDownloadingStatusNotDownloaded: String
@available(OSX 10.9, *)
let urlUbiquitousItemDownloadingStatusDownloaded: String
@available(OSX 10.9, *)
let urlUbiquitousItemDownloadingStatusCurrent: String
@available(OSX 10.6, *)
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var minimalBookmark: URLBookmarkCreationOptions { get }
  static var suitableForBookmarkFile: URLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var withSecurityScope: URLBookmarkCreationOptions { get }
  @available(OSX 10.7, *)
  static var securityScopeAllowOnlyReadAccess: URLBookmarkCreationOptions { get }
}
@available(OSX 10.6, *)
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var withoutUI: URLBookmarkResolutionOptions { get }
  static var withoutMounting: URLBookmarkResolutionOptions { get }
  @available(OSX 10.7, *)
  static var withSecurityScope: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  @available(OSX 10.10, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(OSX 10.10, *)
  func promisedItemResourceValues(forKeys keys: [String]) throws -> [String : AnyObject]
  @available(OSX 10.10, *)
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
@available(OSX 10.10, *)
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(OSX 10.9, *)
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelative(to baseURL: URL?) -> URL?
  @available(OSX 10.10, *)
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
  var queryItems: [URLQueryItem]?
  @available(OSX 10.9, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  @available(OSX 10.9, *)
  class func urlUserAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlPasswordAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlHostAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlPathAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlQueryAllowed() -> CharacterSet
  @available(OSX 10.9, *)
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  @available(OSX 10.9, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(OSX 10.9, *)
  var removingPercentEncoding: String? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(usingEncoding enc: UInt) -> String?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(usingEncoding enc: UInt) -> String?
}
extension URL {
  @available(OSX 10.6, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(OSX 10.6, *)
  var pathComponents: [String]? { get }
  @available(OSX 10.6, *)
  var lastPathComponent: String? { get }
  @available(OSX 10.6, *)
  var pathExtension: String? { get }
  @available(OSX 10.6, *)
  func appendingPathComponent(pathComponent: String) -> URL
  @available(OSX 10.7, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @available(OSX 10.6, *)
  @NSCopying var deletingLastPathComponent: URL? { get }
  @available(OSX 10.6, *)
  func appendingPathExtension(pathExtension: String) -> URL
  @available(OSX 10.6, *)
  @NSCopying var deletingPathExtension: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var standardizingPath: URL? { get }
  @available(OSX 10.6, *)
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
@available(OSX 10.7, *)
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encode(with aCoder: Coder)
}
extension Object {
}
extension URL {
}
