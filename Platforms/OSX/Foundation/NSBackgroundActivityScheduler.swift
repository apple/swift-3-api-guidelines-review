
@available(OSX 10.10, *)
enum NSBackgroundActivityResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Finished
  case Deferred
}
typealias NSBackgroundActivityCompletionHandler = (NSBackgroundActivityResult) -> Void
@available(OSX 10.10, *)
class NSBackgroundActivityScheduler : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: NSQualityOfService
  var repeats: Bool
  var interval: NSTimeInterval
  var tolerance: NSTimeInterval
  func scheduleWithBlock(block: (NSBackgroundActivityCompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
  convenience init()
}
