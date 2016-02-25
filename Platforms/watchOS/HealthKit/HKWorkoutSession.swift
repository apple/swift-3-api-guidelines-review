
@available(watchOS 2.0, *)
enum HKWorkoutSessionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotStarted
  case Running
  case Ended
}
@available(watchOS 2.0, *)
enum HKWorkoutSessionLocationType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Indoor
  case Outdoor
}
@available(watchOS 2.0, *)
class HKWorkoutSession : NSObject, NSSecureCoding {
  var activityType: HKWorkoutActivityType { get }
  var locationType: HKWorkoutSessionLocationType { get }
  weak var delegate: @sil_weak HKWorkoutSessionDelegate?
  var state: HKWorkoutSessionState { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  init(activityType activityType: HKWorkoutActivityType, locationType locationType: HKWorkoutSessionLocationType)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
protocol HKWorkoutSessionDelegate : NSObjectProtocol {
  func workoutSession(_ workoutSession: HKWorkoutSession, didChangeToState toState: HKWorkoutSessionState, fromState fromState: HKWorkoutSessionState, date date: NSDate)
  func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: NSError)
}
