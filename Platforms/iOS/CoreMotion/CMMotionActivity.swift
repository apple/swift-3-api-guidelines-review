
enum CMMotionActivityConfidence : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(iOS 7.0, *)
class CMMotionActivity : CMLogItem {
  var confidence: CMMotionActivityConfidence { get }
  var startDate: NSDate { get }
  var unknown: Bool { get }
  var stationary: Bool { get }
  var walking: Bool { get }
  var running: Bool { get }
  var automotive: Bool { get }
  @available(iOS 8.0, *)
  var cycling: Bool { get }
}
