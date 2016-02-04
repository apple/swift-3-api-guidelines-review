
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 4.0, *)
class EKEventStore : NSObject {
  @available(iOS 6.0, *)
  class func authorizationStatusForEntityType(entityType: EKEntityType) -> EKAuthorizationStatus
  @available(iOS 4.0, *)
  init()
  @available(iOS 6.0, *)
  func requestAccessToEntityType(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(iOS 5.0, *)
  var sources: [EKSource] { get }
  @available(iOS 5.0, *)
  func sourceWithIdentifier(identifier: String) -> EKSource
  @available(iOS 6.0, *)
  func calendarsForEntityType(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(iOS 6.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(iOS 5.0, *)
  func calendarWithIdentifier(identifier: String) -> EKCalendar?
  @available(iOS 5.0, *)
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(iOS 5.0, *)
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(iOS 6.0, *)
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem
  @available(iOS 6.0, *)
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  @available(iOS 4.0, *)
  func saveEvent(event: EKEvent, span: EKSpan) throws
  @available(iOS 4.0, *)
  func removeEvent(event: EKEvent, span: EKSpan) throws
  @available(iOS 5.0, *)
  func saveEvent(event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(iOS 5.0, *)
  func removeEvent(event: EKEvent, span: EKSpan, commit: Bool) throws
  func eventWithIdentifier(identifier: String) -> EKEvent?
  func eventsMatchingPredicate(predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(startDate: NSDate, endDate: NSDate, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func saveReminder(reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func removeReminder(reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func fetchRemindersMatchingPredicate(predicate: NSPredicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(iOS 6.0, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(iOS 6.0, *)
  func predicateForRemindersInCalendars(calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 5.0, *)
  func commit() throws
  @available(iOS 5.0, *)
  func reset()
  @available(iOS 5.0, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void
@available(iOS 4.0, *)
let EKEventStoreChangedNotification: String
