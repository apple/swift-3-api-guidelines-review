
class NSBundle : NSObject {
  class func mainBundle() -> NSBundle
  init?(path path: String)
  @available(OSX 10.6, *)
  convenience init?(URL url: NSURL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var loaded: Bool { get }
  func unload() -> Bool
  @available(OSX 10.5, *)
  func preflight() throws
  @available(OSX 10.5, *)
  func loadAndReturnError() throws
  @available(OSX 10.6, *)
  @NSCopying var bundleURL: NSURL { get }
  @available(OSX 10.6, *)
  @NSCopying var resourceURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var executableURL: NSURL? { get }
  @available(OSX 10.6, *)
  func URLForAuxiliaryExecutable(_ executableName: String) -> NSURL?
  @available(OSX 10.6, *)
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var sharedSupportURL: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @available(OSX 10.7, *)
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(_ executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(OSX 10.6, *)
  class func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> NSURL?
  @available(OSX 10.6, *)
  class func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> [NSURL]?
  @available(OSX 10.6, *)
  func URLForResource(_ name: String?, withExtension ext: String?) -> NSURL?
  @available(OSX 10.6, *)
  func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(OSX 10.6, *)
  func URLForResource(_ name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(OSX 10.6, *)
  func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(OSX 10.6, *)
  func URLsForResourcesWithExtension(_ ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
  class func pathForResource(_ name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResourcesOfType(_ ext: String?, inDirectory bundlePath: String) -> [String]
  func pathForResource(_ name: String?, ofType ext: String?) -> String?
  func pathForResource(_ name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func pathForResource(_ name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResourcesOfType(_ ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResourcesOfType(_ ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedStringForKey(_ key: String, value value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func objectForInfoDictionaryKey(_ key: String) -> AnyObject?
  func classNamed(_ className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizationsFromArray(_ localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFromArray(_ localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(OSX 10.5, *)
  var executableArchitectures: [NSNumber]? { get }
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(OSX 10.11, *)
  func variantFittingPresentationWidth(_ width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
extension NSBundle {
}
