
enum AMLogLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Debug
  case Info
  case Warn
  case Error
}
@available(OSX 10.4, *)
class AMAction : NSObject {
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOfURL fileURL: NSURL) throws
  @available(OSX 10.5, *)
  var name: String { get }
  @available(OSX 10.5, *)
  var ignoresInput: Bool { get }
  @available(OSX 10.6, *)
  var selectedInputType: String?
  @available(OSX 10.6, *)
  var selectedOutputType: String?
  @available(OSX 10.6, *)
  var progressValue: CGFloat
  @available(OSX 10.7, *)
  func runWithInput(input: AnyObject?) throws -> AnyObject
  @available(OSX 10.5, *)
  func runAsynchronouslyWithInput(input: AnyObject?)
  @available(OSX 10.5, *)
  func willFinishRunning()
  @available(OSX 10.7, *)
  func finishRunningWithError(error: NSError?)
  @available(OSX 10.5, *)
  var output: AnyObject?
  func stop()
  func reset()
  func writeToDictionary(dictionary: NSMutableDictionary)
  func opened()
  func activated()
  @available(OSX 10.5, *)
  func closed()
  func updateParameters()
  func parametersUpdated()
  var stopped: Bool { get }
  init()
}
