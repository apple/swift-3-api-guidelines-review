
enum AMLogLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Debug
  case Info
  case Warn
  case Error
}
@available(OSX 10.4, *)
class AMAction : Object {
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOf fileURL: URL) throws
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
  func run(input input: AnyObject?) throws -> AnyObject
  @available(OSX 10.5, *)
  func runAsynchronously(input input: AnyObject?)
  @available(OSX 10.5, *)
  func willFinishRunning()
  @available(OSX 10.7, *)
  func finishRunningWithError(error: Error?)
  @available(OSX 10.5, *)
  var output: AnyObject?
  func stop()
  func reset()
  func writeTo(dictionary: MutableDictionary)
  func opened()
  func activated()
  @available(OSX 10.5, *)
  func closed()
  func updateParameters()
  func parametersUpdated()
  var isStopped: Bool { get }
  init()
}
