
extension NSString {
  class func path(components components: [String]) -> String
  var pathComponents: [String] { get }
  var isAbsolutePath: Bool { get }
  var lastPathComponent: String { get }
  var deletingLastPathComponent: String { get }
  func appendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var deletingPathExtension: String { get }
  func appendingPathExtension(str: String) -> String?
  var abbreviatingWithTildeInPath: String { get }
  var expandingTildeInPath: String { get }
  var standardizingPath: String { get }
  var resolvingSymlinksInPath: String { get }
  func strings(byAppendingPaths paths: [String]) -> [String]
  func completePath(into outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesInto outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func paths(matchingExtensions filterTypes: [String]) -> [String]
}
func userName() -> String
func fullUserName() -> String
func homeDirectory() -> String
func homeDirectoryForUser(userName: String?) -> String?
func temporaryDirectory() -> String
func openStepRootDirectory() -> String
enum SearchPathDirectory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case applicationDirectory
  case demoApplicationDirectory
  case developerApplicationDirectory
  case adminApplicationDirectory
  case libraryDirectory
  case developerDirectory
  case userDirectory
  case documentationDirectory
  case documentDirectory
  case coreServiceDirectory
  @available(iOS 4.0, *)
  case autosavedInformationDirectory
  case desktopDirectory
  case cachesDirectory
  case applicationSupportDirectory
  @available(iOS 2.0, *)
  case downloadsDirectory
  @available(iOS 4.0, *)
  case inputMethodsDirectory
  @available(iOS 4.0, *)
  case moviesDirectory
  @available(iOS 4.0, *)
  case musicDirectory
  @available(iOS 4.0, *)
  case picturesDirectory
  @available(iOS 4.0, *)
  case printerDescriptionDirectory
  @available(iOS 4.0, *)
  case sharedPublicDirectory
  @available(iOS 4.0, *)
  case preferencePanesDirectory
  @available(iOS 4.0, *)
  case itemReplacementDirectory
  case allApplicationsDirectory
  case allLibrariesDirectory
}
struct SearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var userDomainMask: SearchPathDomainMask { get }
  static var localDomainMask: SearchPathDomainMask { get }
  static var networkDomainMask: SearchPathDomainMask { get }
  static var systemDomainMask: SearchPathDomainMask { get }
  static var allDomainsMask: SearchPathDomainMask { get }
}
func searchPathForDirectoriesInDomains(directory: SearchPathDirectory, _ domainMask: SearchPathDomainMask, _ expandTilde: Bool) -> [String]
