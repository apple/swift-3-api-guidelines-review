
class NSBundle : NSObject {
  class func main() -> NSBundle
  init?(path path: String)
  @available(iOS 4.0, *)
  convenience init?(url url: NSURL)
  /*not inherited*/ init(for aClass: AnyClass)
  /*not inherited*/ init?(identifier identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var isLoaded: Bool { get }
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
  func url(forAuxiliaryExecutable executableName: String) -> NSURL?
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
  func path(forAuxiliaryExecutable executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(iOS 4.0, *)
  class func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> NSURL?
  @available(iOS 4.0, *)
  class func urlsForResources(withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> [NSURL]?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?) -> NSURL?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(iOS 4.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(iOS 4.0, *)
  func urlsForResources(withExtension ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(iOS 4.0, *)
  func urlsForResources(withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [NSURL]?
  class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResources(ofType ext: String?, inDirectory bundlePath: String) -> [String]
  func path(forResource name: String?, ofType ext: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResources(ofType ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResources(ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedString(forKey key: String, value value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func object(forInfoDictionaryKey key: String) -> AnyObject?
  func classNamed(_ className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizations(from localizationsArray: [String]) -> [String]
  class func preferredLocalizations(from localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(iOS 2.0, *)
  var executableArchitectures: [NSNumber]? { get }
}
var NSBundleExecutableArchitectureI386: Int { get }
var NSBundleExecutableArchitecturePPC: Int { get }
var NSBundleExecutableArchitectureX86_64: Int { get }
var NSBundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(iOS 9.0, *)
  func variantFittingPresentationWidth(_ width: Int) -> String
}
let NSBundleDidLoadNotification: String
let NSLoadedClasses: String
@available(iOS 9.0, *)
class NSBundleResourceRequest : NSObject, NSProgressReporting {
  convenience init(tags tags: Set<String>)
  init(tags tags: Set<String>, bundle bundle: NSBundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: NSBundle { get }
  func beginAccessingResources(completionHandler completionHandler: (NSError?) -> Void)
  func conditionallyBeginAccessingResources(completionHandler completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: NSProgress { get }
}
extension NSBundle {
  @available(iOS 9.0, *)
  func setPreservationPriority(_ priority: Double, forTags tags: Set<String>)
  @available(iOS 9.0, *)
  func preservationPriority(forTag tag: String) -> Double
}
@available(iOS 9.0, *)
let NSBundleResourceRequestLowDiskSpaceNotification: String
@available(iOS 9.0, *)
let NSBundleResourceRequestLoadingPriorityUrgent: Double
