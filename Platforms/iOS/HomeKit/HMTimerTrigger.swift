
@available(iOS 8.0, *)
class HMTimerTrigger : HMTrigger {
  init(name: String, fireDate: NSDate, timeZone: NSTimeZone?, recurrence: NSDateComponents?, recurrenceCalendar: NSCalendar?)
  @NSCopying var fireDate: NSDate { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  @NSCopying var recurrence: NSDateComponents? { get }
  @NSCopying var recurrenceCalendar: NSCalendar? { get }
  func updateFireDate(fireDate: NSDate, completionHandler completion: (NSError?) -> Void)
  func updateTimeZone(timeZone: NSTimeZone?, completionHandler completion: (NSError?) -> Void)
  func updateRecurrence(recurrence: NSDateComponents?, completionHandler completion: (NSError?) -> Void)
}
