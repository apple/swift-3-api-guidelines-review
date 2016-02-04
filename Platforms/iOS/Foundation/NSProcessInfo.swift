
var windowsNTOperatingSystem: Int { get }
var windows95OperatingSystem: Int { get }
var solarisOperatingSystem: Int { get }
var hpuxOperatingSystem: Int { get }
var machOperatingSystem: Int { get }
var sunOSOperatingSystem: Int { get }
var osf1OperatingSystem: Int { get }
struct OperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class ProcessInfo : Object {
  class func processInfo() -> ProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(iOS, introduced=2.0, deprecated=8.0, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(iOS 8.0, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(iOS 2.0, *)
  var processorCount: Int { get }
  @available(iOS 2.0, *)
  var activeProcessorCount: Int { get }
  @available(iOS 2.0, *)
  var physicalMemory: UInt64 { get }
  @available(iOS 8.0, *)
  func isOperatingSystemAtLeastVersion(version: OperatingSystemVersion) -> Bool
  @available(iOS 4.0, *)
  var systemUptime: TimeInterval { get }
  init()
}
@available(iOS 7.0, *)
struct ActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: ActivityOptions { get }
  static var IdleSystemSleepDisabled: ActivityOptions { get }
  static var SuddenTerminationDisabled: ActivityOptions { get }
  static var AutomaticTerminationDisabled: ActivityOptions { get }
  static var UserInitiated: ActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: ActivityOptions { get }
  static var Background: ActivityOptions { get }
  static var LatencyCritical: ActivityOptions { get }
}
extension ProcessInfo {
  @available(iOS 7.0, *)
  func beginActivity(options options: ActivityOptions = [], reason: String) -> ObjectProtocol
  @available(iOS 7.0, *)
  func endActivity(activity: ObjectProtocol)
  @available(iOS 7.0, *)
  func performActivity(options options: ActivityOptions = [], reason: String, usingBlock block: () -> Void)
  @available(iOS 8.2, *)
  func performExpiringActivityWithReason(reason: String, usingBlock block: (Bool) -> Void)
}
extension ProcessInfo {
}
extension ProcessInfo {
  @available(iOS 9.0, *)
  var isLowPowerModeEnabled: Bool { get }
}
@available(iOS 9.0, *)
let processInfoPowerStateDidChangeNotification: String
