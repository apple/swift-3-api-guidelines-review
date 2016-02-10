
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.8, *)
class EKEventStore : Object {
  @available(OSX 10.9, *)
  class func authorizationStatus(forEntityType entityType: EKEntityType) -> EKAuthorizationStatus
  @available(OSX 10.9, *)
  init()
  @available(OSX 10.11, *)
  init(sources: [EKSource])
  @available(OSX 10.9, *)
  func requestAccess(to entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(OSX 10.11, *)
  var delegateSources: [EKSource] { get }
  @available(OSX 10.8, *)
  var sources: [EKSource] { get }
  @available(OSX 10.8, *)
  func source(withIdentifier identifier: String) -> EKSource
  @available(OSX 10.8, *)
  func calendars(forEntityType entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(OSX 10.8, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(OSX 10.8, *)
  func calendar(withIdentifier identifier: String) -> EKCalendar?
  @available(OSX 10.8, *)
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(OSX 10.8, *)
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(OSX 10.8, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem
  @available(OSX 10.8, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  @available(OSX 10.8, *)
  func save(event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(OSX 10.8, *)
  func remove(event: EKEvent, span: EKSpan, commit: Bool) throws
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: Predicate) -> [EKEvent]
  func enumerateEvents(matching predicate: Predicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStart(startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> Predicate
  @available(OSX 10.8, *)
  func save(reminder: EKReminder, commit: Bool) throws
  @available(OSX 10.8, *)
  func remove(reminder: EKReminder, commit: Bool) throws
  @available(OSX 10.8, *)
  func fetchReminders(matching predicate: Predicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(OSX 10.8, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(OSX 10.8, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> Predicate
  @available(OSX 10.8, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(OSX 10.8, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(OSX 10.8, *)
  func commit() throws
  @available(OSX 10.8, *)
  func reset()
  @available(OSX 10.8, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
@available(OSX 10.8, *)
let EKEventStoreChangedNotification: String
