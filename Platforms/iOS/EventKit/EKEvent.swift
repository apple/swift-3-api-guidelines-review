
enum EKEventAvailability : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotSupported
  case Busy
  case Free
  case Tentative
  case Unavailable
}
enum EKEventStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Confirmed
  case Tentative
  case Canceled
}
@available(iOS 4.0, *)
class EKEvent : EKCalendarItem {
  /*not inherited*/ init(eventStore eventStore: EKEventStore)
  var eventIdentifier: String { get }
  var allDay: Bool
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate
  @available(iOS 9.0, *)
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDateWithEvent(_ other: EKEvent) -> NSComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  @available(iOS 9.0, *)
  var occurrenceDate: NSDate { get }
  @available(iOS 9.0, *)
  var birthdayContactIdentifier: String? { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use birthdayContactIdentifier instead")
  var birthdayPersonID: Int { get }
}
