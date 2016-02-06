
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(watchOS 2.0, *)
class EKEventStore : Object {
  @available(watchOS 2.0, *)
  class func authorizationStatusFor(entityType: EKEntityType) -> EKAuthorizationStatus
  @available(watchOS 2.0, *)
  init()
  @available(watchOS 2.0, *)
  func requestAccessTo(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(watchOS 2.0, *)
  var sources: [EKSource] { get }
  @available(watchOS 2.0, *)
  func sourceWith(identifier identifier: String) -> EKSource
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var calendars: [EKCalendar] { get }
  @available(watchOS 2.0, *)
  func calendarsFor(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(watchOS 2.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(watchOS 2.0, *)
  func calendarWith(identifier identifier: String) -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendarItemWith(identifier identifier: String) -> EKCalendarItem
  @available(watchOS 2.0, *)
  func calendarItemsWith(externalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  func eventWith(identifier identifier: String) -> EKEvent?
  func eventsMatching(predicate: Predicate) -> [EKEvent]
  func enumerateEventsMatching(predicate: Predicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStart(startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func fetchRemindersMatching(predicate: Predicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(watchOS 2.0, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(watchOS 2.0, *)
  func predicateForRemindersIn(calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
@available(watchOS 2.0, *)
let EKEventStoreChangedNotification: String
