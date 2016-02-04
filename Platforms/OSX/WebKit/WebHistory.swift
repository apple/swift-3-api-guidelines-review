
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : Object {
  class func optionalShared() -> WebHistory!
  class func setOptionalSharedHistory(history: WebHistory!)
  func loadFrom(URL: URL!) throws
  func saveTo(URL: URL!) throws
  func addItems(newItems: [AnyObject]!)
  func removeItems(items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisitedOnDay(calendarDate: CalendarDate!) -> [AnyObject]!
  func itemFor(URL: URL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
  init()
}
