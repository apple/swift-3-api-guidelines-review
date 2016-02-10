
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : Object {
  class func optionalShared() -> WebHistory!
  class func setOptionalSharedHistory(history: WebHistory!)
  func load(from URL: URL!) throws
  func save(to URL: URL!) throws
  func addItems(newItems: [AnyObject]!)
  func removeItems(items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisited(onDay calendarDate: CalendarDate!) -> [AnyObject]!
  func item(for URL: URL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
  init()
}
