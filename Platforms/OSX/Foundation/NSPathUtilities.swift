
extension NSString {
  class func path(withComponents components: [String]) -> String
  var pathComponents: [String] { get }
  var isAbsolutePath: Bool { get }
  var lastPathComponent: String { get }
  var deletingLastPathComponent: String { get }
  func appendingPathComponent(_ str: String) -> String
  var pathExtension: String { get }
  var deletingPathExtension: String { get }
  func appendingPathExtension(_ str: String) -> String?
  var abbreviatingWithTildeInPath: String { get }
  var expandingTildeInPath: String { get }
  var standardizingPath: String { get }
  var resolvingSymlinksInPath: String { get }
  func strings(byAppendingPaths paths: [String]) -> [String]
  func completePath(into outputName: AutoreleasingUnsafeMutablePointer<NSString?>, caseSensitive flag: Bool, matchesInto outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>, filterTypes filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  func getFileSystemRepresentation(_ cname: UnsafeMutablePointer<Int8>, maxLength max: Int) -> Bool
}
extension NSArray {
  func paths(matchingExtensions filterTypes: [String]) -> [String]
}
func NSUserName() -> String
func NSFullUserName() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(_ userName: String?) -> String?
func NSTemporaryDirectory() -> String
func NSOpenStepRootDirectory() -> String
enum NSSearchPathDirectory : UInt {
  init?(rawValue rawValue: UInt)
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
  @available(OSX 10.6, *)
  case autosavedInformationDirectory
  case desktopDirectory
  case cachesDirectory
  case applicationSupportDirectory
  @available(OSX 10.5, *)
  case downloadsDirectory
  @available(OSX 10.6, *)
  case inputMethodsDirectory
  @available(OSX 10.6, *)
  case moviesDirectory
  @available(OSX 10.6, *)
  case musicDirectory
  @available(OSX 10.6, *)
  case picturesDirectory
  @available(OSX 10.6, *)
  case printerDescriptionDirectory
  @available(OSX 10.6, *)
  case sharedPublicDirectory
  @available(OSX 10.6, *)
  case preferencePanesDirectory
  @available(OSX 10.8, *)
  case applicationScriptsDirectory
  @available(OSX 10.6, *)
  case itemReplacementDirectory
  case allApplicationsDirectory
  case allLibrariesDirectory
  @available(OSX 10.8, *)
  case trashDirectory
}
struct NSSearchPathDomainMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var userDomainMask: NSSearchPathDomainMask { get }
  static var localDomainMask: NSSearchPathDomainMask { get }
  static var networkDomainMask: NSSearchPathDomainMask { get }
  static var systemDomainMask: NSSearchPathDomainMask { get }
  static var allDomainsMask: NSSearchPathDomainMask { get }
}
func NSSearchPathForDirectoriesInDomains(_ directory: NSSearchPathDirectory, _ domainMask: NSSearchPathDomainMask, _ expandTilde: Bool) -> [String]
