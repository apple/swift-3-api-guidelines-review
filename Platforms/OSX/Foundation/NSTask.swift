
@available(OSX 10.6, *)
enum NSTaskTerminationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exit
  case UncaughtSignal
}
class NSTask : NSObject {
  init()
  var launchPath: String?
  var arguments: [String]?
  var environment: [String : String]?
  var currentDirectoryPath: String
  var standardInput: AnyObject?
  var standardOutput: AnyObject?
  var standardError: AnyObject?
  func launch()
  func interrupt()
  func terminate()
  func suspend() -> Bool
  func resume() -> Bool
  var processIdentifier: Int32 { get }
  var running: Bool { get }
  var terminationStatus: Int32 { get }
  @available(OSX 10.6, *)
  var terminationReason: NSTaskTerminationReason { get }
  @available(OSX 10.7, *)
  var terminationHandler: ((NSTask) -> Void)?
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
}
extension NSTask {
  class func launchedTaskWithLaunchPath(path: String, arguments: [String]) -> NSTask
  func waitUntilExit()
}
let NSTaskDidTerminateNotification: String
