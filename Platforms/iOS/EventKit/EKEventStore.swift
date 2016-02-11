
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 4.0, *)
class EKEventStore : Object {
  @available(iOS 6.0, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(iOS 4.0, *)
  init()
  @available(iOS 6.0, *)
  func requestAccess(to entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  @available(iOS 5.0, *)
  var sources: [EKSource] { get }
  @available(iOS 5.0, *)
  func source(withIdentifier identifier: String) -> EKSource
  @available(iOS 6.0, *)
  func calendars(for entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  @available(iOS 6.0, *)
  func defaultCalendarForNewReminders() -> EKCalendar
  @available(iOS 5.0, *)
  func calendar(withIdentifier identifier: String) -> EKCalendar?
  @available(iOS 5.0, *)
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(iOS 5.0, *)
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws
  @available(iOS 6.0, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem
  @available(iOS 6.0, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  @available(iOS 4.0, *)
  func save(event: EKEvent, span: EKSpan) throws
  @available(iOS 4.0, *)
  func remove(event: EKEvent, span: EKSpan) throws
  @available(iOS 5.0, *)
  func save(event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(iOS 5.0, *)
  func remove(event: EKEvent, span: EKSpan, commit: Bool) throws
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: Predicate) -> [EKEvent]
  func enumerateEvents(matching predicate: Predicate, using block: EKEventSearchCallback)
  func predicateForEvents(withStart startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> Predicate
  @available(iOS 6.0, *)
  func save(reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func remove(reminder: EKReminder, commit: Bool) throws
  @available(iOS 6.0, *)
  func fetchReminders(matching predicate: Predicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(iOS 6.0, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  @available(iOS 6.0, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> Predicate
  @available(iOS 6.0, *)
  func predicateForIncompleteReminders(withDueDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(iOS 6.0, *)
  func predicateForCompletedReminders(withCompletionDateStarting startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  @available(iOS 5.0, *)
  func commit() throws
  @available(iOS 5.0, *)
  func reset()
  @available(iOS 5.0, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
@available(iOS 4.0, *)
let EKEventStoreChangedNotification: String
