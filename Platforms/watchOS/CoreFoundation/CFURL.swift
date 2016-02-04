
enum CFURLPathStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CFURLPOSIXPathStyle
  @available(watchOS, introduced=2.0, deprecated=2.0)
  case CFURLHFSPathStyle
  case CFURLWindowsPathStyle
}
class CFURL {
}
func CFURLGetTypeID() -> CFTypeID
func CFURLCreateWithBytes(allocator: CFAllocator!, _ URLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateData(allocator: CFAllocator!, _ url: CFURL!, _ encoding: CFStringEncoding, _ escapeWhitespace: Bool) -> CFData!
func CFURLCreateWithString(allocator: CFAllocator!, _ URLString: CFString!, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateAbsoluteURLWithBytes(alloc: CFAllocator!, _ relativeURLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!, _ useCompatibilityMode: Bool) -> CFURL!
func CFURLCreateWithFileSystemPath(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool) -> CFURL!
func CFURLCreateFromFileSystemRepresentation(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool) -> CFURL!
func CFURLCreateWithFileSystemPathRelativeToBase(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateFromFileSystemRepresentationRelativeToBase(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLGetFileSystemRepresentation(url: CFURL!, _ resolveAgainstBase: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex) -> Bool
func CFURLCopyAbsoluteURL(relativeURL: CFURL!) -> CFURL!
func CFURLGetString(anURL: CFURL!) -> CFString!
func CFURLGetBaseURL(anURL: CFURL!) -> CFURL!
func CFURLCanBeDecomposed(anURL: CFURL!) -> Bool
func CFURLCopyScheme(anURL: CFURL!) -> CFString!
func CFURLCopyNetLocation(anURL: CFURL!) -> CFString!
func CFURLCopyPath(anURL: CFURL!) -> CFString!
func CFURLCopyStrictPath(anURL: CFURL!, _ isAbsolute: UnsafeMutablePointer<DarwinBoolean>) -> CFString!
func CFURLCopyFileSystemPath(anURL: CFURL!, _ pathStyle: CFURLPathStyle) -> CFString!
func CFURLHasDirectoryPath(anURL: CFURL!) -> Bool
func CFURLCopyResourceSpecifier(anURL: CFURL!) -> CFString!
func CFURLCopyHostName(anURL: CFURL!) -> CFString!
func CFURLGetPortNumber(anURL: CFURL!) -> Int32
func CFURLCopyUserName(anURL: CFURL!) -> CFString!
func CFURLCopyPassword(anURL: CFURL!) -> CFString!
func CFURLCopyParameterString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyQueryString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyFragment(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyLastPathComponent(url: CFURL!) -> CFString!
func CFURLCopyPathExtension(url: CFURL!) -> CFString!
func CFURLCreateCopyAppendingPathComponent(allocator: CFAllocator!, _ url: CFURL!, _ pathComponent: CFString!, _ isDirectory: Bool) -> CFURL!
func CFURLCreateCopyDeletingLastPathComponent(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLCreateCopyAppendingPathExtension(allocator: CFAllocator!, _ url: CFURL!, _ extension: CFString!) -> CFURL!
func CFURLCreateCopyDeletingPathExtension(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLGetBytes(url: CFURL!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
enum CFURLComponentType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Scheme
  case NetLocation
  case Path
  case ResourceSpecifier
  case User
  case Password
  case UserInfo
  case Host
  case Port
  case ParameterString
  case Query
  case Fragment
}
func CFURLGetByteRangeForComponent(url: CFURL!, _ component: CFURLComponentType, _ rangeIncludingSeparators: UnsafeMutablePointer<CFRange>) -> CFRange
func CFURLCreateStringByReplacingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveEscaped: CFString!) -> CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use [NSString stringByRemovingPercentEncoding] or CFURLCreateStringByReplacingPercentEscapes() instead, which always uses the recommended UTF-8 encoding.")
func CFURLCreateStringByReplacingPercentEscapesUsingEncoding(allocator: CFAllocator!, _ origString: CFString!, _ charsToLeaveEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use [NSString stringByAddingPercentEncodingWithAllowedCharacters:] instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent (since each URL component or subcomponent has different rules for what characters are valid).")
func CFURLCreateStringByAddingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveUnescaped: CFString!, _ legalURLCharactersToBeEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(watchOS 2.0, *)
func CFURLIsFileReferenceURL(url: CFURL!) -> Bool
@available(watchOS 2.0, *)
func CFURLCreateFileReferenceURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(watchOS 2.0, *)
func CFURLCreateFilePathURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(watchOS, introduced=2.0, deprecated=2.0)
func CFURLCreateFromFSRef(allocator: CFAllocator!, _ fsRef: COpaquePointer) -> CFURL!
@available(watchOS, introduced=2.0, deprecated=2.0)
func CFURLGetFSRef(url: CFURL!, _ fsRef: COpaquePointer) -> Bool
@available(watchOS 2.0, *)
func CFURLCopyResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValueTypeRefPtr: UnsafeMutablePointer<Void>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
func CFURLCopyResourcePropertiesForKeys(url: CFURL!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
@available(watchOS 2.0, *)
func CFURLSetResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
func CFURLSetResourcePropertiesForKeys(url: CFURL!, _ keyedPropertyValues: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
let kCFURLKeysOfUnsetValuesKey: CFString!
@available(watchOS 2.0, *)
func CFURLClearResourcePropertyCacheForKey(url: CFURL!, _ key: CFString!)
@available(watchOS 2.0, *)
func CFURLClearResourcePropertyCache(url: CFURL!)
@available(watchOS 2.0, *)
func CFURLSetTemporaryResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!)
@available(watchOS 2.0, *)
func CFURLResourceIsReachable(url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
let kCFURLNameKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLocalizedNameKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsRegularFileKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsDirectoryKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsSymbolicLinkKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsVolumeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsPackageKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsApplicationKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsSystemImmutableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsUserImmutableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsHiddenKey: CFString!
@available(watchOS 2.0, *)
let kCFURLHasHiddenExtensionKey: CFString!
@available(watchOS 2.0, *)
let kCFURLCreationDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLContentAccessDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLContentModificationDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLAttributeModificationDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLinkCountKey: CFString!
@available(watchOS 2.0, *)
let kCFURLParentDirectoryURLKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeURLKey: CFString!
@available(watchOS 2.0, *)
let kCFURLTypeIdentifierKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLocalizedTypeDescriptionKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLabelNumberKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLabelColorKey: CFString!
@available(watchOS 2.0, *)
let kCFURLLocalizedLabelKey: CFString!
@available(watchOS 2.0, *)
let kCFURLEffectiveIconKey: CFString!
@available(watchOS 2.0, *)
let kCFURLCustomIconKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceIdentifierKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIdentifierKey: CFString!
@available(watchOS 2.0, *)
let kCFURLPreferredIOBlockSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsReadableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsWritableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsExecutableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileSecurityKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsExcludedFromBackupKey: CFString!
@available(watchOS 2.0, *)
let kCFURLPathKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsMountTriggerKey: CFString!
@available(watchOS 2.0, *)
let kCFURLGenerationIdentifierKey: CFString!
@available(watchOS 2.0, *)
let kCFURLDocumentIdentifierKey: CFString!
@available(watchOS 2.0, *)
let kCFURLAddedToDirectoryDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeNamedPipe: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeCharacterSpecial: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeDirectory: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeBlockSpecial: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeRegular: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeSymbolicLink: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeSocket: CFString!
@available(watchOS 2.0, *)
let kCFURLFileResourceTypeUnknown: CFString!
@available(watchOS 2.0, *)
let kCFURLFileSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileAllocatedSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLTotalFileSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLTotalFileAllocatedSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsAliasFileKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileProtectionKey: CFString!
@available(watchOS 2.0, *)
let kCFURLFileProtectionNone: CFString!
@available(watchOS 2.0, *)
let kCFURLFileProtectionComplete: CFString!
@available(watchOS 2.0, *)
let kCFURLFileProtectionCompleteUnlessOpen: CFString!
@available(watchOS 2.0, *)
let kCFURLFileProtectionCompleteUntilFirstUserAuthentication: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeLocalizedFormatDescriptionKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeTotalCapacityKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeAvailableCapacityKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeResourceCountKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsPersistentIDsKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsSymbolicLinksKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsHardLinksKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsJournalingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsJournalingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsSparseFilesKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsZeroRunsKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsCaseSensitiveNamesKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsCasePreservedNamesKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsRootDirectoryDatesKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsVolumeSizesKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsRenamingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsAdvisoryFileLockingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeSupportsExtendedSecurityKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsBrowsableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeMaximumFileSizeKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsEjectableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsRemovableKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsInternalKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsAutomountedKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsLocalKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeIsReadOnlyKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeCreationDateKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeURLForRemountingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeUUIDStringKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeNameKey: CFString!
@available(watchOS 2.0, *)
let kCFURLVolumeLocalizedNameKey: CFString!
@available(watchOS 2.0, *)
let kCFURLIsUbiquitousItemKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemHasUnresolvedConflictsKey: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use kCFURLUbiquitousItemDownloadingStatusKey instead")
let kCFURLUbiquitousItemIsDownloadedKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemIsDownloadingKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemIsUploadedKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemIsUploadingKey: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSMetadataQuery and NSMetadataUbiquitousItemPercentDownloadedKey on NSMetadataItem instead")
let kCFURLUbiquitousItemPercentDownloadedKey: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSMetadataQuery and NSMetadataUbiquitousItemPercentUploadedKey on NSMetadataItem instead")
let kCFURLUbiquitousItemPercentUploadedKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemDownloadingStatusKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemDownloadingErrorKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemUploadingErrorKey: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemDownloadingStatusNotDownloaded: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemDownloadingStatusDownloaded: CFString!
@available(watchOS 2.0, *)
let kCFURLUbiquitousItemDownloadingStatusCurrent: CFString!
@available(watchOS 2.0, *)
struct CFURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MinimalBookmarkMask: CFURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: CFURLBookmarkCreationOptions { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="kCFURLBookmarkCreationPreferFileIDResolutionMask does nothing and has no effect on bookmark resolution")
  static var PreferFileIDResolutionMask: CFURLBookmarkCreationOptions { get }
}
@available(watchOS 2.0, *)
struct CFURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CFURLBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFURLBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
}
typealias CFURLBookmarkFileCreationOptions = CFOptionFlags
@available(watchOS 2.0, *)
func CFURLCreateBookmarkData(allocator: CFAllocator!, _ url: CFURL!, _ options: CFURLBookmarkCreationOptions, _ resourcePropertiesToInclude: CFArray!, _ relativeToURL: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(watchOS 2.0, *)
func CFURLCreateByResolvingBookmarkData(allocator: CFAllocator!, _ bookmark: CFData!, _ options: CFURLBookmarkResolutionOptions, _ relativeToURL: CFURL!, _ resourcePropertiesToInclude: CFArray!, _ isStale: UnsafeMutablePointer<DarwinBoolean>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(watchOS 2.0, *)
func CFURLCreateResourcePropertiesForKeysFromBookmarkData(allocator: CFAllocator!, _ resourcePropertiesToReturn: CFArray!, _ bookmark: CFData!) -> Unmanaged<CFDictionary>!
@available(watchOS 2.0, *)
func CFURLCreateResourcePropertyForKeyFromBookmarkData(allocator: CFAllocator!, _ resourcePropertyKey: CFString!, _ bookmark: CFData!) -> Unmanaged<CFTypeRef>!
@available(watchOS 2.0, *)
func CFURLCreateBookmarkDataFromFile(allocator: CFAllocator!, _ fileURL: CFURL!, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(watchOS 2.0, *)
func CFURLWriteBookmarkDataToFile(bookmarkRef: CFData!, _ fileURL: CFURL!, _ options: CFURLBookmarkFileCreationOptions, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
func CFURLStartAccessingSecurityScopedResource(url: CFURL!) -> Bool
@available(watchOS 2.0, *)
func CFURLStopAccessingSecurityScopedResource(url: CFURL!)
