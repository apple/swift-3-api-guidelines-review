
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(watchOS 2.0, *)
class EKEventStore : NSObject {
  @available(watchOS 2.0, *)
  class func authorizationStatusForEntityType(entityType: EKEntityType) -> EKAuthorizationStatus
  @available(watchOS 2.0, *)
  init()
  @available(watchOS 2.0, *)
  func requestAccessToEntityType(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(watchOS 2.0, *)
  var sources: [EKSource] { get }
  @available(watchOS 2.0, *)
  func sourceWithIdentifier(identifier: String) -> EKSource
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var calendars: [EKCalendar] { get }
  @available(watchOS 2.0, *)
  func calendarsForEntityType(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(watchOS 2.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(watchOS 2.0, *)
  func calendarWithIdentifier(identifier: String) -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem
  @available(watchOS 2.0, *)
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  func eventWithIdentifier(identifier: String) -> EKEvent?
  func eventsMatchingPredicate(predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(startDate: NSDate, endDate: NSDate, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func fetchRemindersMatchingPredicate(predicate: NSPredicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(watchOS 2.0, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(watchOS 2.0, *)
  func predicateForRemindersInCalendars(calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void
@available(watchOS 2.0, *)
let EKEventStoreChangedNotification: String
