
@available(iOS 5.0, *)
class EKCalendarItem : EKObject {
  var calendar: EKCalendar
  @available(iOS 6.0, *)
  var calendarItemIdentifier: String { get }
  @available(iOS 6.0, *)
  var calendarItemExternalIdentifier: String { get }
  var title: String
  var location: String?
  var notes: String?
  @available(iOS 5.0, *)
  @NSCopying var URL: NSURL?
  var lastModifiedDate: NSDate? { get }
  @available(iOS 5.0, *)
  var creationDate: NSDate? { get }
  @available(iOS 5.0, *)
  @NSCopying var timeZone: NSTimeZone?
  @available(iOS 5.0, *)
  var hasAlarms: Bool { get }
  @available(iOS 5.0, *)
  var hasRecurrenceRules: Bool { get }
  @available(iOS 5.0, *)
  var hasAttendees: Bool { get }
  @available(iOS 5.0, *)
  var hasNotes: Bool { get }
  var attendees: [EKParticipant]? { get }
  var alarms: [EKAlarm]?
  func addAlarm(alarm: EKAlarm)
  func removeAlarm(alarm: EKAlarm)
  @available(iOS 5.0, *)
  var recurrenceRules: [EKRecurrenceRule]?
  func addRecurrenceRule(rule: EKRecurrenceRule)
  func removeRecurrenceRule(rule: EKRecurrenceRule)
  init()
}
