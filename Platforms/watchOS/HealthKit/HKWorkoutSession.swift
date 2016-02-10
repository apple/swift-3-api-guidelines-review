
@available(watchOS 2.0, *)
enum HKWorkoutSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notStarted
  case running
  case ended
}
@available(watchOS 2.0, *)
enum HKWorkoutSessionLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case indoor
  case outdoor
}
@available(watchOS 2.0, *)
class HKWorkoutSession : Object, SecureCoding {
  var activityType: HKWorkoutActivityType { get }
  var locationType: HKWorkoutSessionLocationType { get }
  weak var delegate: @sil_weak HKWorkoutSessionDelegate?
  var state: HKWorkoutSessionState { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  init(activityType: HKWorkoutActivityType, locationType: HKWorkoutSessionLocationType)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
protocol HKWorkoutSessionDelegate : ObjectProtocol {
  func workoutSession(workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date)
  func workoutSession(workoutSession: HKWorkoutSession, didFailWithError error: Error)
}
