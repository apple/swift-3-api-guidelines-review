
var NSWindowsNTOperatingSystem: Int { get }
var NSWindows95OperatingSystem: Int { get }
var NSSolarisOperatingSystem: Int { get }
var NSHPUXOperatingSystem: Int { get }
var NSMACHOperatingSystem: Int { get }
var NSSunOSOperatingSystem: Int { get }
var NSOSF1OperatingSystem: Int { get }
struct NSOperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class NSProcessInfo : NSObject {
  class func processInfo() -> NSProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(tvOS, introduced=2.0, deprecated=8.0, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(tvOS 8.0, *)
  var operatingSystemVersion: NSOperatingSystemVersion { get }
  @available(tvOS 2.0, *)
  var processorCount: Int { get }
  @available(tvOS 2.0, *)
  var activeProcessorCount: Int { get }
  @available(tvOS 2.0, *)
  var physicalMemory: UInt64 { get }
  @available(tvOS 8.0, *)
  func isOperatingSystemAtLeastVersion(version: NSOperatingSystemVersion) -> Bool
  @available(tvOS 4.0, *)
  var systemUptime: NSTimeInterval { get }
  init()
}
@available(tvOS 7.0, *)
struct NSActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: NSActivityOptions { get }
  static var IdleSystemSleepDisabled: NSActivityOptions { get }
  static var SuddenTerminationDisabled: NSActivityOptions { get }
  static var AutomaticTerminationDisabled: NSActivityOptions { get }
  static var UserInitiated: NSActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: NSActivityOptions { get }
  static var Background: NSActivityOptions { get }
  static var LatencyCritical: NSActivityOptions { get }
}
extension NSProcessInfo {
  @available(tvOS 7.0, *)
  func beginActivityWithOptions(options: NSActivityOptions, reason: String) -> NSObjectProtocol
  @available(tvOS 7.0, *)
  func endActivity(activity: NSObjectProtocol)
  @available(tvOS 7.0, *)
  func performActivityWithOptions(options: NSActivityOptions, reason: String, usingBlock block: () -> Void)
  @available(tvOS 8.2, *)
  func performExpiringActivityWithReason(reason: String, usingBlock block: (Bool) -> Void)
}
extension NSProcessInfo {
}
extension NSProcessInfo {
  @available(tvOS 9.0, *)
  var lowPowerModeEnabled: Bool { get }
}
@available(tvOS 9.0, *)
let NSProcessInfoPowerStateDidChangeNotification: String
