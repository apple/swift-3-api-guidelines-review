
@available(OSX 10.10, *)
enum BackgroundActivityResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case finished
  case deferred
}
typealias BackgroundActivityCompletionHandler = (BackgroundActivityResult) -> Void
@available(OSX 10.10, *)
class BackgroundActivityScheduler : Object {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: QualityOfService
  var repeats: Bool
  var interval: TimeInterval
  var tolerance: TimeInterval
  func schedule(block: (BackgroundActivityCompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
  convenience init()
}
