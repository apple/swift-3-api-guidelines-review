
@available(iOS 8.0, *)
class HMTimerTrigger : HMTrigger {
  init(name: String, fire fireDate: Date, timeZone: TimeZone?, recurrence: DateComponents?, recurrenceCalendar: Calendar?)
  @NSCopying var fireDate: Date { get }
  @NSCopying var timeZone: TimeZone? { get }
  @NSCopying var recurrence: DateComponents? { get }
  @NSCopying var recurrenceCalendar: Calendar? { get }
  func updateFire(fireDate: Date, completionHandler completion: (Error?) -> Void)
  func updateTimeZone(timeZone: TimeZone?, completionHandler completion: (Error?) -> Void)
  func updateRecurrence(recurrence: DateComponents?, completionHandler completion: (Error?) -> Void)
}
