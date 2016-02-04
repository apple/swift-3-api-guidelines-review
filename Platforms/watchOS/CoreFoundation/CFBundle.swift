
class CFBundle {
}
class CFPlugIn {
}
let kCFBundleInfoDictionaryVersionKey: CFString!
let kCFBundleExecutableKey: CFString!
let kCFBundleIdentifierKey: CFString!
let kCFBundleVersionKey: CFString!
let kCFBundleDevelopmentRegionKey: CFString!
let kCFBundleNameKey: CFString!
let kCFBundleLocalizationsKey: CFString!
func CFBundleGetMainBundle() -> CFBundle!
func CFBundleGetBundleWithIdentifier(bundleID: CFString!) -> CFBundle!
func CFBundleGetAllBundles() -> CFArray!
func CFBundleGetTypeID() -> CFTypeID
func CFBundleCreate(allocator: CFAllocator!, _ bundleURL: CFURL!) -> CFBundle!
func CFBundleCreateBundlesFromDirectory(allocator: CFAllocator!, _ directoryURL: CFURL!, _ bundleType: CFString!) -> CFArray!
func CFBundleCopyBundleURL(bundle: CFBundle!) -> CFURL!
func CFBundleGetValueForInfoDictionaryKey(bundle: CFBundle!, _ key: CFString!) -> CFTypeRef!
func CFBundleGetInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetLocalInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetPackageInfo(bundle: CFBundle!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>)
func CFBundleGetIdentifier(bundle: CFBundle!) -> CFString!
func CFBundleGetVersionNumber(bundle: CFBundle!) -> UInt32
func CFBundleGetDevelopmentRegion(bundle: CFBundle!) -> CFString!
func CFBundleCopySupportFilesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyResourcesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyPrivateFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedSupportURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyBuiltInPlugInsURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyInfoDictionaryInDirectory(bundleURL: CFURL!) -> CFDictionary!
func CFBundleGetPackageInfoInDirectory(url: CFURL!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>) -> Bool
func CFBundleCopyResourceURL(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfType(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyLocalizedString(bundle: CFBundle!, _ key: CFString!, _ value: CFString!, _ tableName: CFString!) -> CFString!
func CFBundleCopyResourceURLInDirectory(bundleURL: CFURL!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeInDirectory(bundleURL: CFURL!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyBundleLocalizations(bundle: CFBundle!) -> CFArray!
func CFBundleCopyPreferredLocalizationsFromArray(locArray: CFArray!) -> CFArray!
func CFBundleCopyLocalizationsForPreferences(locArray: CFArray!, _ prefArray: CFArray!) -> CFArray!
func CFBundleCopyResourceURLForLocalization(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeForLocalization(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFArray!
func CFBundleCopyInfoDictionaryForURL(url: CFURL!) -> CFDictionary!
func CFBundleCopyLocalizationsForURL(url: CFURL!) -> CFArray!
@available(watchOS 2.0, *)
func CFBundleCopyExecutableArchitecturesForURL(url: CFURL!) -> CFArray!
func CFBundleCopyExecutableURL(bundle: CFBundle!) -> CFURL!
var kCFBundleExecutableArchitectureI386: Int { get }
var kCFBundleExecutableArchitecturePPC: Int { get }
var kCFBundleExecutableArchitectureX86_64: Int { get }
var kCFBundleExecutableArchitecturePPC64: Int { get }
@available(watchOS 2.0, *)
func CFBundleCopyExecutableArchitectures(bundle: CFBundle!) -> CFArray!
@available(watchOS 2.0, *)
func CFBundlePreflightExecutable(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
func CFBundleLoadExecutableAndReturnError(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFBundleLoadExecutable(bundle: CFBundle!) -> Bool
func CFBundleIsExecutableLoaded(bundle: CFBundle!) -> Bool
func CFBundleUnloadExecutable(bundle: CFBundle!)
func CFBundleGetFunctionPointerForName(bundle: CFBundle!, _ functionName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetFunctionPointersForNames(bundle: CFBundle!, _ functionNames: CFArray!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleGetDataPointerForName(bundle: CFBundle!, _ symbolName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetDataPointersForNames(bundle: CFBundle!, _ symbolNames: CFArray!, _ stbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleCopyAuxiliaryExecutableURL(bundle: CFBundle!, _ executableName: CFString!) -> CFURL!
func CFBundleGetPlugIn(bundle: CFBundle!) -> CFPlugIn!
typealias CFBundleRefNum = Int16
func CFBundleOpenBundleResourceMap(bundle: CFBundle!) -> CFBundleRefNum
func CFBundleOpenBundleResourceFiles(bundle: CFBundle!, _ refNum: UnsafeMutablePointer<CFBundleRefNum>, _ localizedRefNum: UnsafeMutablePointer<CFBundleRefNum>) -> Int32
func CFBundleCloseBundleResourceMap(bundle: CFBundle!, _ refNum: CFBundleRefNum)
