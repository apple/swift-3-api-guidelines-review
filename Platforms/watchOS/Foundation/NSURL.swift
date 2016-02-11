
class URL : Object, SecureCoding, Copying {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(watchOS 2.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var hasDirectoryPath: Bool { get }
  @available(watchOS 2.0, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(watchOS 2.0, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var isFileURL: Bool { get }
  @NSCopying var standardized: URL? { get }
  @available(watchOS 2.0, *)
  func checkResourceIsReachableAndReturnError(error: ErrorPointer) -> Bool
  @available(watchOS 2.0, *)
  func isFileReferenceURL() -> Bool
  @available(watchOS 2.0, *)
  func fileReference() -> URL?
  @available(watchOS 2.0, *)
  @NSCopying var filePath: URL? { get }
  @available(watchOS 2.0, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(watchOS 2.0, *)
  func resourceValues(forKeys keys: [String]) throws -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(watchOS 2.0, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(watchOS 2.0, *)
  func removeCachedResourceValue(forKey key: String)
  @available(watchOS 2.0, *)
  func removeAllCachedResourceValues()
  @available(watchOS 2.0, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(watchOS 2.0, *)
  func bookmarkData(options: URLBookmarkCreationOptions = [], includingResourceValuesForKeys keys: [String]?, relativeTo relativeURL: URL?) throws -> Data
  @available(watchOS 2.0, *)
  convenience init(byResolvingBookmarkData bookmarkData: Data, options: URLBookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(watchOS 2.0, *)
  class func resourceValues(forKeys keys: [String], fromBookmarkData bookmarkData: Data) -> [String : AnyObject]?
  @available(watchOS 2.0, *)
  class func writeBookmarkData(bookmarkData: Data, to bookmarkFileURL: URL, options: URLBookmarkFileCreationOptions) throws
  @available(watchOS 2.0, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(watchOS 2.0, *)
  convenience init(byResolvingAliasFileAt url: URL, options: URLBookmarkResolutionOptions = []) throws
  @available(watchOS 2.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let urlKeysOfUnsetValuesKey: String
@available(watchOS 2.0, *)
let urlNameKey: String
@available(watchOS 2.0, *)
let urlLocalizedNameKey: String
@available(watchOS 2.0, *)
let urlisRegularFileKey: String
@available(watchOS 2.0, *)
let urlisDirectoryKey: String
@available(watchOS 2.0, *)
let urlisSymbolicLinkKey: String
@available(watchOS 2.0, *)
let urlisVolumeKey: String
@available(watchOS 2.0, *)
let urlisPackageKey: String
@available(watchOS 2.0, *)
let urlisApplicationKey: String
@available(watchOS 2.0, *)
let urlisSystemImmutableKey: String
@available(watchOS 2.0, *)
let urlisUserImmutableKey: String
@available(watchOS 2.0, *)
let urlisHiddenKey: String
@available(watchOS 2.0, *)
let urlHasHiddenExtensionKey: String
@available(watchOS 2.0, *)
let urlCreationDateKey: String
@available(watchOS 2.0, *)
let urlContentAccessDateKey: String
@available(watchOS 2.0, *)
let urlContentModificationDateKey: String
@available(watchOS 2.0, *)
let urlAttributeModificationDateKey: String
@available(watchOS 2.0, *)
let urlLinkCountKey: String
@available(watchOS 2.0, *)
let urlParentDirectoryURLKey: String
@available(watchOS 2.0, *)
let urlVolumeURLKey: String
@available(watchOS 2.0, *)
let urlTypeIdentifierKey: String
@available(watchOS 2.0, *)
let urlLocalizedTypeDescriptionKey: String
@available(watchOS 2.0, *)
let urlLabelNumberKey: String
@available(watchOS 2.0, *)
let urlLabelColorKey: String
@available(watchOS 2.0, *)
let urlLocalizedLabelKey: String
@available(watchOS 2.0, *)
let urlEffectiveIconKey: String
@available(watchOS 2.0, *)
let urlCustomIconKey: String
@available(watchOS 2.0, *)
let urlFileResourceIdentifierKey: String
@available(watchOS 2.0, *)
let urlVolumeIdentifierKey: String
@available(watchOS 2.0, *)
let urlPreferredIOBlockSizeKey: String
@available(watchOS 2.0, *)
let urlisReadableKey: String
@available(watchOS 2.0, *)
let urlisWritableKey: String
@available(watchOS 2.0, *)
let urlisExecutableKey: String
@available(watchOS 2.0, *)
let urlFileSecurityKey: String
@available(watchOS 2.0, *)
let urlisExcludedFromBackupKey: String
@available(watchOS 2.0, *)
let urlPathKey: String
@available(watchOS 2.0, *)
let urlisMountTriggerKey: String
@available(watchOS 2.0, *)
let urlGenerationIdentifierKey: String
@available(watchOS 2.0, *)
let urlDocumentIdentifierKey: String
@available(watchOS 2.0, *)
let urlAddedToDirectoryDateKey: String
@available(watchOS 2.0, *)
let urlFileResourceTypeKey: String
@available(watchOS 2.0, *)
let urlFileResourceTypeNamedPipe: String
@available(watchOS 2.0, *)
let urlFileResourceTypeCharacterSpecial: String
@available(watchOS 2.0, *)
let urlFileResourceTypeDirectory: String
@available(watchOS 2.0, *)
let urlFileResourceTypeBlockSpecial: String
@available(watchOS 2.0, *)
let urlFileResourceTypeRegular: String
@available(watchOS 2.0, *)
let urlFileResourceTypeSymbolicLink: String
@available(watchOS 2.0, *)
let urlFileResourceTypeSocket: String
@available(watchOS 2.0, *)
let urlFileResourceTypeUnknown: String
@available(watchOS 2.0, *)
let urlThumbnailDictionaryKey: String
@available(watchOS 2.0, *)
let thumbnail1024x1024SizeKey: String
@available(watchOS 2.0, *)
let urlFileSizeKey: String
@available(watchOS 2.0, *)
let urlFileAllocatedSizeKey: String
@available(watchOS 2.0, *)
let urlTotalFileSizeKey: String
@available(watchOS 2.0, *)
let urlTotalFileAllocatedSizeKey: String
@available(watchOS 2.0, *)
let urlisAliasFileKey: String
@available(watchOS 2.0, *)
let urlFileProtectionKey: String
@available(watchOS 2.0, *)
let urlFileProtectionNone: String
@available(watchOS 2.0, *)
let urlFileProtectionComplete: String
@available(watchOS 2.0, *)
let urlFileProtectionCompleteUnlessOpen: String
@available(watchOS 2.0, *)
let urlFileProtectionCompleteUntilFirstUserAuthentication: String
@available(watchOS 2.0, *)
let urlVolumeLocalizedFormatDescriptionKey: String
@available(watchOS 2.0, *)
let urlVolumeTotalCapacityKey: String
@available(watchOS 2.0, *)
let urlVolumeAvailableCapacityKey: String
@available(watchOS 2.0, *)
let urlVolumeResourceCountKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsPersistentIDsKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsSymbolicLinksKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsHardLinksKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsJournalingKey: String
@available(watchOS 2.0, *)
let urlVolumeIsJournalingKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsSparseFilesKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsZeroRunsKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsCaseSensitiveNamesKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsCasePreservedNamesKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsRootDirectoryDatesKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsVolumeSizesKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsRenamingKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsAdvisoryFileLockingKey: String
@available(watchOS 2.0, *)
let urlVolumeSupportsExtendedSecurityKey: String
@available(watchOS 2.0, *)
let urlVolumeIsBrowsableKey: String
@available(watchOS 2.0, *)
let urlVolumeMaximumFileSizeKey: String
@available(watchOS 2.0, *)
let urlVolumeIsEjectableKey: String
@available(watchOS 2.0, *)
let urlVolumeIsRemovableKey: String
@available(watchOS 2.0, *)
let urlVolumeIsInternalKey: String
@available(watchOS 2.0, *)
let urlVolumeIsAutomountedKey: String
@available(watchOS 2.0, *)
let urlVolumeIsLocalKey: String
@available(watchOS 2.0, *)
let urlVolumeIsReadOnlyKey: String
@available(watchOS 2.0, *)
let urlVolumeCreationDateKey: String
@available(watchOS 2.0, *)
let urlVolumeURLForRemountingKey: String
@available(watchOS 2.0, *)
let urlVolumeUUIDStringKey: String
@available(watchOS 2.0, *)
let urlVolumeNameKey: String
@available(watchOS 2.0, *)
let urlVolumeLocalizedNameKey: String
@available(watchOS 2.0, *)
let urlisUbiquitousItemKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemHasUnresolvedConflictsKey: String
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSURLUbiquitousItemDownloadingStatusKey instead")
let urlUbiquitousItemIsDownloadedKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemIsDownloadingKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemIsUploadedKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemIsUploadingKey: String
@available(watchOS, introduced=2.0, deprecated=2.0)
let urlUbiquitousItemPercentDownloadedKey: String
@available(watchOS, introduced=2.0, deprecated=2.0)
let urlUbiquitousItemPercentUploadedKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadingStatusKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadingErrorKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemUploadingErrorKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadRequestedKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemContainerDisplayNameKey: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadingStatusNotDownloaded: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadingStatusDownloaded: String
@available(watchOS 2.0, *)
let urlUbiquitousItemDownloadingStatusCurrent: String
@available(watchOS 2.0, *)
struct URLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(watchOS, introduced=2.0, deprecated=2.0)
  static var preferFileIDResolution: URLBookmarkCreationOptions { get }
  static var minimalBookmark: URLBookmarkCreationOptions { get }
  static var suitableForBookmarkFile: URLBookmarkCreationOptions { get }
}
@available(watchOS 2.0, *)
struct URLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var withoutUI: URLBookmarkResolutionOptions { get }
  static var withoutMounting: URLBookmarkResolutionOptions { get }
}
typealias URLBookmarkFileCreationOptions = Int
extension URL {
  @available(watchOS 2.0, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(watchOS 2.0, *)
  func promisedItemResourceValues(forKeys keys: [String]) throws -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func checkPromisedItemIsReachableAndReturnError(error: ErrorPointer) -> Bool
}
@available(watchOS 2.0, *)
class URLQueryItem : Object, SecureCoding, Copying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
class URLComponents : Object, Copying {
  init()
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var url: URL? { get }
  func urlRelative(to baseURL: URL?) -> URL?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var rangeOfScheme: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfUser: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPassword: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfHost: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPort: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPath: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfQuery: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfFragment: NSRange { get }
  @available(watchOS 2.0, *)
  var queryItems: [URLQueryItem]?
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension CharacterSet {
  @available(watchOS 2.0, *)
  class func urlUserAllowed() -> CharacterSet
  @available(watchOS 2.0, *)
  class func urlPasswordAllowed() -> CharacterSet
  @available(watchOS 2.0, *)
  class func urlHostAllowed() -> CharacterSet
  @available(watchOS 2.0, *)
  class func urlPathAllowed() -> CharacterSet
  @available(watchOS 2.0, *)
  class func urlQueryAllowed() -> CharacterSet
  @available(watchOS 2.0, *)
  class func urlFragmentAllowed() -> CharacterSet
}
extension NSString {
  @available(watchOS 2.0, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(watchOS 2.0, *)
  var removingPercentEncoding: String? { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(usingEncoding enc: UInt) -> String?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(usingEncoding enc: UInt) -> String?
}
extension URL {
  @available(watchOS 2.0, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(watchOS 2.0, *)
  var pathComponents: [String]? { get }
  @available(watchOS 2.0, *)
  var lastPathComponent: String? { get }
  @available(watchOS 2.0, *)
  var pathExtension: String? { get }
  @available(watchOS 2.0, *)
  func appendingPathComponent(pathComponent: String) -> URL
  @available(watchOS 2.0, *)
  func appendingPathComponent(pathComponent: String, isDirectory: Bool) -> URL
  @available(watchOS 2.0, *)
  @NSCopying var deletingLastPathComponent: URL? { get }
  @available(watchOS 2.0, *)
  func appendingPathExtension(pathExtension: String) -> URL
  @available(watchOS 2.0, *)
  @NSCopying var deletingPathExtension: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var standardizingPath: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var resolvingSymlinksInPath: URL? { get }
}
@available(watchOS 2.0, *)
class FileSecurity : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  convenience init()
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
}
