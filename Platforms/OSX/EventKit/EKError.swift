
@available(OSX 10.8, *)
let EKErrorDomain: String
enum EKErrorCode : Int {
  case EventNotMutable
  case NoCalendar
  case NoStartDate
  case NoEndDate
  case DatesInverted
  case InternalFailure
  case CalendarReadOnly
  case DurationGreaterThanRecurrence
  case AlarmGreaterThanRecurrence
  case StartDateTooFarInFuture
  case StartDateCollidesWithOtherOccurrence
  case ObjectBelongsToDifferentStore
  case InvitesCannotBeMoved
  case InvalidSpan
  case CalendarHasNoSource
  case CalendarSourceCannotBeModified
  case CalendarIsImmutable
  case SourceDoesNotAllowCalendarAddDelete
  case RecurringReminderRequiresDueDate
  case StructuredLocationsNotSupported
  case ReminderLocationsNotSupported
  case AlarmProximityNotSupported
  case CalendarDoesNotAllowEvents
  case CalendarDoesNotAllowReminders
  case SourceDoesNotAllowReminders
  case SourceDoesNotAllowEvents
  case PriorityIsInvalid
  case InvalidEntityType
  case ProcedureAlarmsNotMutable
  case EventStoreNotAuthorized
  case OSNotSupported
  case Last
}

extension EKErrorCode : _BridgedNSError {
}
