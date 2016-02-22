
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
func CFBundleGetBundleWithIdentifier(_ bundleID: CFString!) -> CFBundle!
func CFBundleGetAllBundles() -> CFArray!
func CFBundleGetTypeID() -> CFTypeID
func CFBundleCreate(_ allocator: CFAllocator!, _ bundleURL: CFURL!) -> CFBundle!
func CFBundleCreateBundlesFromDirectory(_ allocator: CFAllocator!, _ directoryURL: CFURL!, _ bundleType: CFString!) -> CFArray!
func CFBundleCopyBundleURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleGetValueForInfoDictionaryKey(_ bundle: CFBundle!, _ key: CFString!) -> CFTypeRef!
func CFBundleGetInfoDictionary(_ bundle: CFBundle!) -> CFDictionary!
func CFBundleGetLocalInfoDictionary(_ bundle: CFBundle!) -> CFDictionary!
func CFBundleGetPackageInfo(_ bundle: CFBundle!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>)
func CFBundleGetIdentifier(_ bundle: CFBundle!) -> CFString!
func CFBundleGetVersionNumber(_ bundle: CFBundle!) -> UInt32
func CFBundleGetDevelopmentRegion(_ bundle: CFBundle!) -> CFString!
func CFBundleCopySupportFilesDirectoryURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyResourcesDirectoryURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyPrivateFrameworksURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedFrameworksURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedSupportURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyBuiltInPlugInsURL(_ bundle: CFBundle!) -> CFURL!
func CFBundleCopyInfoDictionaryInDirectory(_ bundleURL: CFURL!) -> CFDictionary!
func CFBundleGetPackageInfoInDirectory(_ url: CFURL!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>) -> Bool
func CFBundleCopyResourceURL(_ bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfType(_ bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyLocalizedString(_ bundle: CFBundle!, _ key: CFString!, _ value: CFString!, _ tableName: CFString!) -> CFString!
func CFBundleCopyResourceURLInDirectory(_ bundleURL: CFURL!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeInDirectory(_ bundleURL: CFURL!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyBundleLocalizations(_ bundle: CFBundle!) -> CFArray!
func CFBundleCopyPreferredLocalizationsFromArray(_ locArray: CFArray!) -> CFArray!
func CFBundleCopyLocalizationsForPreferences(_ locArray: CFArray!, _ prefArray: CFArray!) -> CFArray!
func CFBundleCopyResourceURLForLocalization(_ bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeForLocalization(_ bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFArray!
func CFBundleCopyInfoDictionaryForURL(_ url: CFURL!) -> CFDictionary!
func CFBundleCopyLocalizationsForURL(_ url: CFURL!) -> CFArray!
@available(tvOS 2.0, *)
func CFBundleCopyExecutableArchitecturesForURL(_ url: CFURL!) -> CFArray!
func CFBundleCopyExecutableURL(_ bundle: CFBundle!) -> CFURL!
var kCFBundleExecutableArchitectureI386: Int { get }
var kCFBundleExecutableArchitecturePPC: Int { get }
var kCFBundleExecutableArchitectureX86_64: Int { get }
var kCFBundleExecutableArchitecturePPC64: Int { get }
@available(tvOS 2.0, *)
func CFBundleCopyExecutableArchitectures(_ bundle: CFBundle!) -> CFArray!
@available(tvOS 2.0, *)
func CFBundlePreflightExecutable(_ bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 2.0, *)
func CFBundleLoadExecutableAndReturnError(_ bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFBundleLoadExecutable(_ bundle: CFBundle!) -> Bool
func CFBundleIsExecutableLoaded(_ bundle: CFBundle!) -> Bool
func CFBundleUnloadExecutable(_ bundle: CFBundle!)
func CFBundleGetFunctionPointerForName(_ bundle: CFBundle!, _ functionName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetFunctionPointersForNames(_ bundle: CFBundle!, _ functionNames: CFArray!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleGetDataPointerForName(_ bundle: CFBundle!, _ symbolName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetDataPointersForNames(_ bundle: CFBundle!, _ symbolNames: CFArray!, _ stbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleCopyAuxiliaryExecutableURL(_ bundle: CFBundle!, _ executableName: CFString!) -> CFURL!
func CFBundleGetPlugIn(_ bundle: CFBundle!) -> CFPlugIn!
typealias CFBundleRefNum = Int32
func CFBundleOpenBundleResourceMap(_ bundle: CFBundle!) -> CFBundleRefNum
func CFBundleOpenBundleResourceFiles(_ bundle: CFBundle!, _ refNum: UnsafeMutablePointer<CFBundleRefNum>, _ localizedRefNum: UnsafeMutablePointer<CFBundleRefNum>) -> Int32
func CFBundleCloseBundleResourceMap(_ bundle: CFBundle!, _ refNum: CFBundleRefNum)
