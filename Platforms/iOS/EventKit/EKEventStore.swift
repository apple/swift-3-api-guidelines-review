
enum EKSpan : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 4.0, *)
class EKEventStore : NSObject {
  @available(iOS 6.0, *)
  class func authorizationStatusForEntityType(_ entityType: EKEntityType) -> EKAuthorizationStatus
  @available(iOS 6.0, *)
  func requestAccessToEntityType(_ entityType: EKEntityType, completion completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(iOS 5.0, *)
  var sources: [EKSource] { get }
  @available(iOS 5.0, *)
  func sourceWithIdentifier(_ identifier: String) -> EKSource
  @available(iOS 6.0, *)
  func calendarsForEntityType(_ entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(iOS 6.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(iOS 5.0, *)
  func calendarWithIdentifier(_ identifier: String) -> EKCalendar?
  @available(iOS 5.0, *)
  func saveCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(iOS 5.0, *)
  func removeCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func calendarItemWithIdentifier(_ identifier: String) -> EKCalendarItem
  @available(iOS 6.0, *)
  func calendarItemsWithExternalIdentifier(_ externalIdentifier: String) -> [EKCalendarItem]
  @available(iOS 4.0, *)
  func saveEvent(_ event: EKEvent, span span: EKSpan) throws
  @available(iOS 4.0, *)
  func removeEvent(_ event: EKEvent, span span: EKSpan) throws
  @available(iOS 5.0, *)
  func saveEvent(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  @available(iOS 5.0, *)
  func removeEvent(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  func eventWithIdentifier(_ identifier: String) -> EKEvent?
  func eventsMatchingPredicate(_ predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(_ predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(_ startDate: NSDate, endDate endDate: NSDate, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func saveReminder(_ reminder: EKReminder, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func removeReminder(_ reminder: EKReminder, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func fetchRemindersMatchingPredicate(_ predicate: NSPredicate, completion completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(iOS 6.0, *)
  func cancelFetchRequest(_ fetchIdentifier: AnyObject)
  @available(iOS 6.0, *)
  func predicateForRemindersInCalendars(_ calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForIncompleteRemindersWithDueDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
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
