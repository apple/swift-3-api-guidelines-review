
@available(iOS 4.0, *)
class EKRecurrenceRule : EKObject, Copying {
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, end: EKRecurrenceEnd?)
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, daysOfTheWeek days: [EKRecurrenceDayOfWeek]?, daysOfTheMonth monthDays: [Number]?, monthsOfTheYear months: [Number]?, weeksOfTheYear: [Number]?, daysOfTheYear: [Number]?, setPositions: [Number]?, end: EKRecurrenceEnd?)
  var calendarIdentifier: String { get }
  @NSCopying var recurrenceEnd: EKRecurrenceEnd?
  var frequency: EKRecurrenceFrequency { get }
  var interval: Int { get }
  var firstDayOfTheWeek: Int { get }
  var daysOfTheWeek: [EKRecurrenceDayOfWeek]? { get }
  var daysOfTheMonth: [Number]? { get }
  var daysOfTheYear: [Number]? { get }
  var weeksOfTheYear: [Number]? { get }
  var monthsOfTheYear: [Number]? { get }
  var setPositions: [Number]? { get }
  init()
  @available(iOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
