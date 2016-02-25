
struct NSApplicationActivationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var activateAllWindows: NSApplicationActivationOptions { get }
  static var activateIgnoringOtherApps: NSApplicationActivationOptions { get }
}
enum NSApplicationActivationPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case regular
  case accessory
  case prohibited
}
@available(OSX 10.6, *)
class NSRunningApplication : NSObject {
  var isTerminated: Bool { get }
  var isFinishedLaunching: Bool { get }
  var isHidden: Bool { get }
  var isActive: Bool { get }
  @available(OSX 10.7, *)
  var ownsMenuBar: Bool { get }
  var activationPolicy: NSApplicationActivationPolicy { get }
  var localizedName: String? { get }
  var bundleIdentifier: String? { get }
  @NSCopying var bundleURL: NSURL? { get }
  @NSCopying var executableURL: NSURL? { get }
  var processIdentifier: pid_t { get }
  @NSCopying var launchDate: NSDate? { get }
  var icon: NSImage? { get }
  var executableArchitecture: Int { get }
  func hide() -> Bool
  func unhide() -> Bool
  func activate(_ options: NSApplicationActivationOptions = []) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplications(withBundleIdentifier bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class func current() -> Self
  class func terminateAutomaticallyTerminableApplications()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  var runningApplications: [NSRunningApplication] { get }
}
