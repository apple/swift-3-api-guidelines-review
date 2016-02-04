
@available(OSX 10.11, *)
enum NSHapticFeedbackPattern : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Generic
  case Alignment
  case LevelChange
}
@available(OSX 10.11, *)
enum NSHapticFeedbackPerformanceTime : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Now
  case DrawCompleted
}
protocol NSHapticFeedbackPerformer : NSObjectProtocol {
  @available(OSX 10.11, *)
  func performFeedbackPattern(pattern: NSHapticFeedbackPattern, performanceTime: NSHapticFeedbackPerformanceTime)
}
@available(OSX 10.11, *)
class NSHapticFeedbackManager : NSObject {
  class func defaultPerformer() -> NSHapticFeedbackPerformer
  init()
}
