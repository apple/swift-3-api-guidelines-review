
class NSBundle : NSObject {
  class func mainBundle() -> NSBundle
  init?(path: String)
  @available(iOS 4.0, *)
  convenience init?(URL url: NSURL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var loaded: Bool { get }
  func unload() -> Bool
  @available(iOS 2.0, *)
  func preflight() throws
  @available(iOS 2.0, *)
  func loadAndReturnError() throws
  @available(iOS 4.0, *)
  @NSCopying var bundleURL: NSURL { get }
  @available(iOS 4.0, *)
  @NSCopying var resourceURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var executableURL: NSURL? { get }
  @available(iOS 4.0, *)
  func URLForAuxiliaryExecutable(executableName: String) -> NSURL?
  @available(iOS 4.0, *)
  @NSCopying var privateFrameworksURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var sharedFrameworksURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var sharedSupportURL: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var builtInPlugInsURL: NSURL? { get }
  @available(iOS 7.0, *)
  @NSCopying var appStoreReceiptURL: NSURL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func pathForAuxiliaryExecutable(executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(iOS 4.0, *)
  class func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> NSURL?
  @available(iOS 4.0, *)
  class func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, inBundleWithURL bundleURL: NSURL) -> [NSURL]?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLForResource(name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(iOS 4.0, *)
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(iOS 4.0, *)
  func URLsForResourcesWithExtension(ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
  class func pathForResource(name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResourcesOfType(ext: String?, inDirectory bundlePath: String) -> [String]
  func pathForResource(name: String?, ofType ext: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func pathForResource(name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResourcesOfType(ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedStringForKey(key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func objectForInfoDictionaryKey(key: String) -> AnyObject?
  func classNamed(className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizationsFromArray(localizationsArray: [String]) -> [String]
  class func preferredLocalizationsFromArray(localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(iOS 2.0, *)
  var executableArchitectures: [NSNumber]? { get }
  convenience init()
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(iOS 9.0, *)
  func variantFittingPresentationWidth(width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
@available(iOS 9.0, *)
class NSBundleResourceRequest : NSObject, NSProgressReporting {
  convenience init(tags: Set<String>)
  init(tags: Set<String>, bundle: NSBundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: NSBundle { get }
  func beginAccessingResourcesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func conditionallyBeginAccessingResourcesWithCompletionHandler(completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: NSProgress { get }
}
extension NSBundle {
  @available(iOS 9.0, *)
  func setPreservationPriority(priority: Double, forTags tags: Set<String>)
  @available(iOS 9.0, *)
  func preservationPriorityForTag(tag: String) -> Double
}
@available(iOS 9.0, *)
let NSBundleResourceRequestLowDiskSpaceNotification: String
@available(iOS 9.0, *)
let NSBundleResourceRequestLoadingPriorityUrgent: Double
