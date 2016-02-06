
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
  @available(watchOS, introduced=2.0, deprecated=2.0, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(watchOS, introduced=2.0, deprecated=2.0, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(watchOS 2.0, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(watchOS 2.0, *)
  var processorCount: Int { get }
  @available(watchOS 2.0, *)
  var activeProcessorCount: Int { get }
  @available(watchOS 2.0, *)
  var physicalMemory: UInt64 { get }
  @available(watchOS 2.0, *)
  func isOperatingSystemAt(leastVersion version: OperatingSystemVersion) -> Bool
  @available(watchOS 2.0, *)
  var systemUptime: TimeInterval { get }
  init()
}
@available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func beginActivity(options: ActivityOptions = [], reason: String) -> ObjectProtocol
  @available(watchOS 2.0, *)
  func endActivity(activity: ObjectProtocol)
  @available(watchOS 2.0, *)
  func performActivity(options: ActivityOptions = [], reason: String, usingBlock block: () -> Void)
  @available(watchOS 2.0, *)
  func performExpiringActivity(reason reason: String, usingBlock block: (Bool) -> Void)
}
extension ProcessInfo {
}
extension ProcessInfo {
  @available(watchOS 2.0, *)
  var isLowPowerModeEnabled: Bool { get }
}
@available(watchOS 2.0, *)
let processInfoPowerStateDidChangeNotification: String
