
enum EKSpan : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(watchOS 2.0, *)
class EKEventStore : NSObject {
  @available(watchOS 2.0, *)
  class func authorizationStatusForEntityType(_ entityType: EKEntityType) -> EKAuthorizationStatus
  @available(watchOS 2.0, *)
  func requestAccessToEntityType(_ entityType: EKEntityType, completion completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(watchOS 2.0, *)
  var sources: [EKSource] { get }
  @available(watchOS 2.0, *)
  func sourceWithIdentifier(_ identifier: String) -> EKSource
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var calendars: [EKCalendar] { get }
  @available(watchOS 2.0, *)
  func calendarsForEntityType(_ entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(watchOS 2.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(watchOS 2.0, *)
  func calendarWithIdentifier(_ identifier: String) -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendarItemWithIdentifier(_ identifier: String) -> EKCalendarItem
  @available(watchOS 2.0, *)
  func calendarItemsWithExternalIdentifier(_ externalIdentifier: String) -> [EKCalendarItem]
  func eventWithIdentifier(_ identifier: String) -> EKEvent?
  func eventsMatchingPredicate(_ predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(_ predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(_ startDate: NSDate, endDate endDate: NSDate, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func fetchRemindersMatchingPredicate(_ predicate: NSPredicate, completion completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(watchOS 2.0, *)
  func cancelFetchRequest(_ fetchIdentifier: AnyObject)
  @available(watchOS 2.0, *)
  func predicateForRemindersInCalendars(_ calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForIncompleteRemindersWithDueDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(_ startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(watchOS 2.0, *)
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void
@available(watchOS 2.0, *)
let EKEventStoreChangedNotification: String
