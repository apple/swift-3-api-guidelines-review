
extension NSString {
  class func pathWithComponents(components: [String]) -> String
  var pathComponents: [String] { get }
  var absolutePath: Bool { get }
  var lastPathComponent: String { get }
  var stringByDeletingLastPathComponent: String { get }
  func stringByAppendingPathComponent(str: String) -> String
  var pathExtension: String { get }
  var stringByDeletingPathExtension: String { get }
  func stringByAppendingPathExtension(str: String) -> String?
  var stringByAbbreviatingWithTildeInPath: String { get }
  var stringByExpandingTildeInPath: String { get }
  var stringByStandardizingPath: String { get }
  var stringByResolvingSymlinksInPath: String { get }
  func stringsByAppendingPaths(paths: [String]) -> [String]
  func completePathIntoString(outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesIntoArray outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func pathsMatchingExtensions(filterTypes: [String]) -> [String]
}
func NSUserName() -> String
func NSFullUserName() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(userName: String?) -> String?
func NSTemporaryDirectory() -> String
func NSOpenStepRootDirectory() -> String
enum NSSearchPathDirectory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ApplicationDirectory
  case DemoApplicationDirectory
  case DeveloperApplicationDirectory
  case AdminApplicationDirectory
  case LibraryDirectory
  case DeveloperDirectory
  case UserDirectory
  case DocumentationDirectory
  case DocumentDirectory
  case CoreServiceDirectory
  @available(iOS 4.0, *)
  case AutosavedInformationDirectory
  case DesktopDirectory
  case CachesDirectory
  case ApplicationSupportDirectory
  @available(iOS 2.0, *)
  case DownloadsDirectory
  @available(iOS 4.0, *)
  case InputMethodsDirectory
  @available(iOS 4.0, *)
  case MoviesDirectory
  @available(iOS 4.0, *)
  case MusicDirectory
  @available(iOS 4.0, *)
  case PicturesDirectory
  @available(iOS 4.0, *)
  case PrinterDescriptionDirectory
  @available(iOS 4.0, *)
  case SharedPublicDirectory
  @available(iOS 4.0, *)
  case PreferencePanesDirectory
  @available(iOS 4.0, *)
  case ItemReplacementDirectory
  case AllApplicationsDirectory
  case AllLibrariesDirectory
}
struct NSSearchPathDomainMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDomainMask: NSSearchPathDomainMask { get }
  static var LocalDomainMask: NSSearchPathDomainMask { get }
  static var NetworkDomainMask: NSSearchPathDomainMask { get }
  static var SystemDomainMask: NSSearchPathDomainMask { get }
  static var AllDomainsMask: NSSearchPathDomainMask { get }
}
func NSSearchPathForDirectoriesInDomains(directory: NSSearchPathDirectory, _ domainMask: NSSearchPathDomainMask, _ expandTilde: Bool) -> [String]
