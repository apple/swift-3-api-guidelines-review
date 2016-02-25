
enum EKSpan : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.8, *)
class EKEventStore : NSObject {
  @available(OSX 10.9, *)
  class func authorizationStatusForEntityType(_ entityType: EKEntityType) -> EKAuthorizationStatus
  @available(OSX 10.11, *)
  init(sources sources: [EKSource])
  @available(OSX 10.9, *)
  func requestAccessToEntityType(_ entityType: EKEntityType, completion completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(OSX 10.11, *)
  var delegateSources: [EKSource] { get }
  @available(OSX 10.8, *)
  var sources: [EKSource] { get }
  @available(OSX 10.8, *)
  func sourceWithIdentifier(_ identifier: String) -> EKSource
  @available(OSX 10.8, *)
  func calendarsForEntityType(_ entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(OSX 10.8, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(OSX 10.8, *)
  func calendarWithIdentifier(_ identifier: String) -> EKCalendar?
  @available(OSX 10.8, *)
  func saveCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(OSX 10.8, *)
  func removeCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(OSX 10.8, *)
  func calendarItemWithIdentifier(_ identifier: String) -> EKCalendarItem
  @available(OSX 10.8, *)
  func calendarItemsWithExternalIdentifier(_ externalIdentifier: String) -> [EKCalendarItem]
  @available(OSX 10.8, *)
  func saveEvent(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  @available(OSX 10.8, *)
  func removeEvent(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  func eventWithIdentifier(_ identifier: String) -> EKEvent?
  func eventsMatchingPredicate(_ predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(_ predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(_ startDate: NSDate, endDate endDate: NSDate, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func saveReminder(_ reminder: EKReminder, commit commit: Bool) throws
  @available(OSX 10.8, *)
  func removeReminder(_ reminder: EKReminder, commit commit: Bool) throws
  @available(OSX 10.8, *)
  func fetchRemindersMatchingPredicate(_ predicate: NSPredicate, completion completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(OSX 10.8, *)
  func cancelFetchRequest(_ fetchIdentifier: AnyObject)
  @available(OSX 10.8, *)
  func predicateForRemindersInCalendars(_ calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func predicateForIncompleteRemindersWithDueDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func commit() throws
  @available(OSX 10.8, *)
  func reset()
  @available(OSX 10.8, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void
@available(OSX 10.8, *)
let EKEventStoreChangedNotification: String
