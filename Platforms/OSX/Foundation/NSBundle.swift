
class NSBundle : NSObject {
  class func main() -> NSBundle
  init?(path path: String)
  @available(OSX 10.6, *)
  convenience init?(url url: NSURL)
  /*not inherited*/ init(for aClass: AnyClass)
  /*not inherited*/ init?(identifier identifier: String)
  class func allBundles() -> [NSBundle]
  class func allFrameworks() -> [NSBundle]
  func load() -> Bool
  var isLoaded: Bool { get }
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
  func url(forAuxiliaryExecutable executableName: String) -> NSURL?
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
  func path(forAuxiliaryExecutable executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(OSX 10.6, *)
  class func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> NSURL?
  @available(OSX 10.6, *)
  class func urlsForResources(withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: NSURL) -> [NSURL]?
  @available(OSX 10.6, *)
  func url(forResource name: String?, withExtension ext: String?) -> NSURL?
  @available(OSX 10.6, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?) -> NSURL?
  @available(OSX 10.6, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> NSURL?
  @available(OSX 10.6, *)
  func urlsForResources(withExtension ext: String?, subdirectory subpath: String?) -> [NSURL]?
  @available(OSX 10.6, *)
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
