
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(watchOS 2.0, *)
class EKEventStore : Object {
  @available(watchOS 2.0, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(watchOS 2.0, *)
  init()
  @available(watchOS 2.0, *)
  func requestAccess(to entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(watchOS 2.0, *)
  var sources: [EKSource] { get }
  @available(watchOS 2.0, *)
  func source(identifier identifier: String) -> EKSource
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var calendars: [EKCalendar] { get }
  @available(watchOS 2.0, *)
  func calendars(for entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(watchOS 2.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(watchOS 2.0, *)
  func calendar(identifier identifier: String) -> EKCalendar?
  @available(watchOS 2.0, *)
  func calendarItem(identifier identifier: String) -> EKCalendarItem
  @available(watchOS 2.0, *)
  func calendarItems(externalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  func event(identifier identifier: String) -> EKEvent?
  func events(matching predicate: Predicate) -> [EKEvent]
  func enumerateEvents(matching predicate: Predicate, using block: EKEventSearchCallback)
  func predicateForEvents(start startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func fetchReminders(matching predicate: Predicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(watchOS 2.0, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(watchOS 2.0, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func predicateForIncompleteReminders(dueDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func predicateForCompletedReminders(completionDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(watchOS 2.0, *)
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
@available(watchOS 2.0, *)
let EKEventStoreChangedNotification: String
