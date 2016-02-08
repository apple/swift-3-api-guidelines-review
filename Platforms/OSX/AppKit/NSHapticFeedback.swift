
@available(OSX 10.11, *)
enum NSHapticFeedbackPattern : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case generic
  case alignment
  case levelChange
}
@available(OSX 10.11, *)
enum NSHapticFeedbackPerformanceTime : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case now
  case drawCompleted
}
protocol NSHapticFeedbackPerformer : ObjectProtocol {
  @available(OSX 10.11, *)
  func perform(pattern: NSHapticFeedbackPattern, performanceTime: NSHapticFeedbackPerformanceTime)
}
@available(OSX 10.11, *)
class NSHapticFeedbackManager : Object {
  class func defaultPerformer() -> NSHapticFeedbackPerformer
  init()
}
