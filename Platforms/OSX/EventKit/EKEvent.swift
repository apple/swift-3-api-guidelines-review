
enum EKEventAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSupported
  case Busy
  case Free
  case Tentative
  case Unavailable
}
enum EKEventStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Confirmed
  case Tentative
  case Canceled
}
@available(OSX 10.8, *)
class EKEvent : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  var eventIdentifier: String { get }
  var isAllDay: Bool
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date
  @available(OSX 10.11, *)
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDateWith(other: EKEvent) -> ComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  @available(OSX 10.8, *)
  var occurrenceDate: Date { get }
  func refresh() -> Bool
  @available(OSX 10.11, *)
  var birthdayContactIdentifier: String? { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use birthdayContactIdentifier instead")
  var birthdayPersonUniqueID: String? { get }
  init()
}
