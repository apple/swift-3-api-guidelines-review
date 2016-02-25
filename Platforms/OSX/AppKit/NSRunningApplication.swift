
struct NSApplicationActivationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ActivateAllWindows: NSApplicationActivationOptions { get }
  static var ActivateIgnoringOtherApps: NSApplicationActivationOptions { get }
}
enum NSApplicationActivationPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Accessory
  case Prohibited
}
@available(OSX 10.6, *)
class NSRunningApplication : NSObject {
  var terminated: Bool { get }
  var finishedLaunching: Bool { get }
  var hidden: Bool { get }
  var active: Bool { get }
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
  func activateWithOptions(_ options: NSApplicationActivationOptions) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplicationsWithBundleIdentifier(_ bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class func currentApplication() -> Self
  class func terminateAutomaticallyTerminableApplications()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  var runningApplications: [NSRunningApplication] { get }
}
