
@available(OSX 10.6, *)
enum TaskTerminationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exit
  case UncaughtSignal
}
class Task : Object {
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
  var isRunning: Bool { get }
  var terminationStatus: Int32 { get }
  @available(OSX 10.6, *)
  var terminationReason: TaskTerminationReason { get }
  @available(OSX 10.7, *)
  var terminationHandler: ((Task) -> Void)?
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
}
extension Task {
  class func launchedTaskWithLaunchPath(path: String, arguments: [String]) -> Task
  func waitUntilExit()
}
let taskDidTerminateNotification: String
