
class Bundle : Object {
  class func main() -> Bundle
  init?(path: String)
  @available(watchOS 2.0, *)
  convenience init?(url: URL)
  /*not inherited*/ init(forClass aClass: AnyClass)
  /*not inherited*/ init?(identifier: String)
  class func allBundles() -> [Bundle]
  class func allFrameworks() -> [Bundle]
  func load() -> Bool
  var isLoaded: Bool { get }
  func unload() -> Bool
  @available(watchOS 2.0, *)
  func preflight() throws
  @available(watchOS 2.0, *)
  func loadAndReturnError() throws
  @available(watchOS 2.0, *)
  @NSCopying var bundleURL: URL { get }
  @available(watchOS 2.0, *)
  @NSCopying var resourceURL: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var executableURL: URL? { get }
  @available(watchOS 2.0, *)
  func url(forAuxiliaryExecutable executableName: String) -> URL?
  @available(watchOS 2.0, *)
  @NSCopying var privateFrameworksURL: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var sharedFrameworksURL: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var sharedSupportURL: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var builtInPlugInsURL: URL? { get }
  @available(watchOS 2.0, *)
  @NSCopying var appStoreReceiptURL: URL? { get }
  var bundlePath: String { get }
  var resourcePath: String? { get }
  var executablePath: String? { get }
  func path(forAuxiliaryExecutable executableName: String) -> String?
  var privateFrameworksPath: String? { get }
  var sharedFrameworksPath: String? { get }
  var sharedSupportPath: String? { get }
  var builtInPlugInsPath: String? { get }
  @available(watchOS 2.0, *)
  class func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> URL?
  @available(watchOS 2.0, *)
  class func urlsForResources(withExtension ext: String?, subdirectory subpath: String?, inBundleWith bundleURL: URL) -> [URL]?
  @available(watchOS 2.0, *)
  func url(forResource name: String?, withExtension ext: String?) -> URL?
  @available(watchOS 2.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?) -> URL?
  @available(watchOS 2.0, *)
  func url(forResource name: String?, withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> URL?
  @available(watchOS 2.0, *)
  func urlsForResources(withExtension ext: String?, subdirectory subpath: String?) -> [URL]?
  @available(watchOS 2.0, *)
  func urlsForResources(withExtension ext: String?, subdirectory subpath: String?, localization localizationName: String?) -> [URL]?
  class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String?
  class func pathsForResources(ofType ext: String?, inDirectory bundlePath: String) -> [String]
  func path(forResource name: String?, ofType ext: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String?
  func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String?
  func pathsForResources(ofType ext: String?, inDirectory subpath: String?) -> [String]
  func pathsForResources(ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String]
  func localizedString(forKey key: String, value: String?, table tableName: String?) -> String
  var bundleIdentifier: String? { get }
  var infoDictionary: [String : AnyObject]? { get }
  var localizedInfoDictionary: [String : AnyObject]? { get }
  func object(forInfoDictionaryKey key: String) -> AnyObject?
  func classNamed(className: String) -> AnyClass?
  var principalClass: AnyClass? { get }
  var preferredLocalizations: [String] { get }
  var localizations: [String] { get }
  var developmentLocalization: String? { get }
  class func preferredLocalizations(from localizationsArray: [String]) -> [String]
  class func preferredLocalizations(from localizationsArray: [String], forPreferences preferencesArray: [String]?) -> [String]
  @available(watchOS 2.0, *)
  var executableArchitectures: [Number]? { get }
  convenience init()
}
var bundleExecutableArchitectureI386: Int { get }
var bundleExecutableArchitecturePPC: Int { get }
var bundleExecutableArchitectureX86_64: Int { get }
var bundleExecutableArchitecturePPC64: Int { get }
extension NSString {
  @available(watchOS 2.0, *)
  func variantFittingPresentationWidth(width: Int) -> String
}
let bundleDidLoadNotification: String
let loadedClasses: String
@available(watchOS 2.0, *)
class BundleResourceRequest : Object, ProgressReporting {
  convenience init(tags: Set<String>)
  init(tags: Set<String>, bundle: Bundle)
  var loadingPriority: Double
  var tags: Set<String> { get }
  var bundle: Bundle { get }
  func beginAccessingResources(withCompletionHandler completionHandler: (Error?) -> Void)
  func conditionallyBeginAccessingResources(withCompletionHandler completionHandler: (Bool) -> Void)
  func endAccessingResources()
  var progress: Progress { get }
}
extension Bundle {
  @available(watchOS 2.0, *)
  func setPreservationPriority(priority: Double, forTags tags: Set<String>)
  @available(watchOS 2.0, *)
  func preservationPriority(forTag tag: String) -> Double
}
@available(watchOS 2.0, *)
let bundleResourceRequestLowDiskSpaceNotification: String
@available(watchOS 2.0, *)
let bundleResourceRequestLoadingPriorityUrgent: Double
