
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.8, *)
class EKEventStore : NSObject {
  @available(OSX 10.9, *)
  class func authorizationStatusForEntityType(entityType: EKEntityType) -> EKAuthorizationStatus
  @available(OSX 10.9, *)
  init()
  @available(OSX 10.11, *)
  init(sources: [EKSource])
  @available(OSX 10.9, *)
  func requestAccessToEntityType(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(OSX 10.11, *)
  var delegateSources: [EKSource] { get }
  @available(OSX 10.8, *)
  var sources: [EKSource] { get }
  @available(OSX 10.8, *)
  func sourceWithIdentifier(identifier: String) -> EKSource
  @available(OSX 10.8, *)
  func calendarsForEntityType(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(OSX 10.8, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(OSX 10.8, *)
  func calendarWithIdentifier(identifier: String) -> EKCalendar?
  @available(OSX 10.8, *)
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(OSX 10.8, *)
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(OSX 10.8, *)
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem
  @available(OSX 10.8, *)
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  @available(OSX 10.8, *)
  func saveEvent(event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(OSX 10.8, *)
  func removeEvent(event: EKEvent, span: EKSpan, commit: Bool) throws
  func eventWithIdentifier(identifier: String) -> EKEvent?
  func eventsMatchingPredicate(predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(startDate: NSDate, endDate: NSDate, calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func saveReminder(reminder: EKReminder, commit: Bool) throws
  @available(OSX 10.8, *)
  func removeReminder(reminder: EKReminder, commit: Bool) throws
  @available(OSX 10.8, *)
  func fetchRemindersMatchingPredicate(predicate: NSPredicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(OSX 10.8, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(OSX 10.8, *)
  func predicateForRemindersInCalendars(calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  @available(OSX 10.8, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
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
