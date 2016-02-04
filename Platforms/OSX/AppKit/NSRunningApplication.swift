
struct NSApplicationActivationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ActivateAllWindows: NSApplicationActivationOptions { get }
  static var ActivateIgnoringOtherApps: NSApplicationActivationOptions { get }
}
enum NSApplicationActivationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Accessory
  case Prohibited
}
@available(OSX 10.6, *)
class NSRunningApplication : Object {
  var isTerminated: Bool { get }
  var isFinishedLaunching: Bool { get }
  var isHidden: Bool { get }
  var isActive: Bool { get }
  @available(OSX 10.7, *)
  var ownsMenuBar: Bool { get }
  var activationPolicy: NSApplicationActivationPolicy { get }
  var localizedName: String? { get }
  var bundleIdentifier: String? { get }
  @NSCopying var bundleURL: URL? { get }
  @NSCopying var executableURL: URL? { get }
  var processIdentifier: pid_t { get }
  @NSCopying var launchDate: Date? { get }
  var icon: NSImage? { get }
  var executableArchitecture: Int { get }
  func hide() -> Bool
  func unhide() -> Bool
  func activate(options options: NSApplicationActivationOptions = []) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplicationsWithBundleIdentifier(bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class func current() -> Self
  class func terminateAutomaticallyTerminableApplications()
  init()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  var runningApplications: [NSRunningApplication] { get }
}
