
@available(watchOS 20000, *)
class HMTimerTrigger : HMTrigger {
  @NSCopying var fireDate: Date { get }
  @NSCopying var timeZone: TimeZone? { get }
  @NSCopying var recurrence: DateComponents? { get }
  @NSCopying var recurrenceCalendar: Calendar? { get }
}
