
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
  init(majorVersion majorVersion: Int, minorVersion minorVersion: Int, patchVersion patchVersion: Int)
}
class NSProcessInfo : NSObject {
  class func processInfo() -> NSProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(OSX 10.10, *)
  var operatingSystemVersion: NSOperatingSystemVersion { get }
  @available(OSX 10.5, *)
  var processorCount: Int { get }
  @available(OSX 10.5, *)
  var activeProcessorCount: Int { get }
  @available(OSX 10.5, *)
  var physicalMemory: UInt64 { get }
  @available(OSX 10.10, *)
  func isOperatingSystem(atLeastVersion version: NSOperatingSystemVersion) -> Bool
  @available(OSX 10.6, *)
  var systemUptime: NSTimeInterval { get }
  @available(OSX 10.6, *)
  func disableSuddenTermination()
  @available(OSX 10.6, *)
  func enableSuddenTermination()
  @available(OSX 10.7, *)
  func disableAutomaticTermination(_ reason: String)
  @available(OSX 10.7, *)
  func enableAutomaticTermination(_ reason: String)
  @available(OSX 10.7, *)
  var automaticTerminationSupportEnabled: Bool
}
@available(OSX 10.9, *)
struct NSActivityOptions : OptionSetType {
  init(rawValue rawValue: UInt64)
  let rawValue: UInt64
  static var idleDisplaySleepDisabled: NSActivityOptions { get }
  static var idleSystemSleepDisabled: NSActivityOptions { get }
  static var suddenTerminationDisabled: NSActivityOptions { get }
  static var automaticTerminationDisabled: NSActivityOptions { get }
  static var userInitiated: NSActivityOptions { get }
  static var userInitiatedAllowingIdleSystemSleep: NSActivityOptions { get }
  static var background: NSActivityOptions { get }
  static var latencyCritical: NSActivityOptions { get }
}
extension NSProcessInfo {
  @available(OSX 10.9, *)
  func beginActivity(_ options: NSActivityOptions = [], reason reason: String) -> NSObjectProtocol
  @available(OSX 10.9, *)
  func endActivity(_ activity: NSObjectProtocol)
  @available(OSX 10.9, *)
  func performActivity(_ options: NSActivityOptions = [], reason reason: String, using block: () -> Void)
}
@available(OSX 10.10.3, *)
enum NSProcessInfoThermalState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case nominal
  case fair
  case serious
  case critical
}
extension NSProcessInfo {
  @available(OSX 10.10.3, *)
  var thermalState: NSProcessInfoThermalState { get }
}
extension NSProcessInfo {
}
@available(OSX 10.10.3, *)
let NSProcessInfoThermalStateDidChangeNotification: String
