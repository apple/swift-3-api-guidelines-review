
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : NSObject {
  class func optionalShared() -> WebHistory!
  class func setOptionalSharedHistory(_ history: WebHistory!)
  func load(from URL: NSURL!) throws
  func save(to URL: NSURL!) throws
  func addItems(_ newItems: [AnyObject]!)
  func removeItems(_ items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisited(onDay calendarDate: NSCalendarDate!) -> [AnyObject]!
  func item(for URL: NSURL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
}
