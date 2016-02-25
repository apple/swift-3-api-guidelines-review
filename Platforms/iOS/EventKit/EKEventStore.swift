
enum EKSpan : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case thisEvent
  case futureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS 4.0, *)
class EKEventStore : NSObject {
  @available(iOS 6.0, *)
  class func authorizationStatus(for entityType: EKEntityType) -> EKAuthorizationStatus
  @available(iOS 6.0, *)
  func requestAccess(to entityType: EKEntityType, completion completion: EKEventStoreRequestAccessCompletionHandler)
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
  func saveCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(iOS 5.0, *)
  func removeCalendar(_ calendar: EKCalendar, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func calendarItem(withIdentifier identifier: String) -> EKCalendarItem
  @available(iOS 6.0, *)
  func calendarItems(withExternalIdentifier externalIdentifier: String) -> [EKCalendarItem]
  @available(iOS 4.0, *)
  func save(_ event: EKEvent, span span: EKSpan) throws
  @available(iOS 4.0, *)
  func remove(_ event: EKEvent, span span: EKSpan) throws
  @available(iOS 5.0, *)
  func save(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  @available(iOS 5.0, *)
  func remove(_ event: EKEvent, span span: EKSpan, commit commit: Bool) throws
  func event(withIdentifier identifier: String) -> EKEvent?
  func events(matching predicate: NSPredicate) -> [EKEvent]
  func enumerateEvents(matching predicate: NSPredicate, using block: EKEventSearchCallback)
  func predicateForEvents(withStart startDate: NSDate, end endDate: NSDate, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func save(_ reminder: EKReminder, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func remove(_ reminder: EKReminder, commit commit: Bool) throws
  @available(iOS 6.0, *)
  func fetchReminders(matching predicate: NSPredicate, completion completion: ([EKReminder]?) -> Void) -> AnyObject
  @available(iOS 6.0, *)
  func cancelFetchRequest(_ fetchIdentifier: AnyObject)
  @available(iOS 6.0, *)
  func predicateForReminders(in calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForIncompleteReminders(withDueDateStarting startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
  @available(iOS 6.0, *)
  func predicateForCompletedReminders(withCompletionDateStarting startDate: NSDate?, ending endDate: NSDate?, calendars calendars: [EKCalendar]?) -> NSPredicate
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
