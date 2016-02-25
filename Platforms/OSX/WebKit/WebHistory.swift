
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : NSObject {
  class func optionalSharedHistory() -> WebHistory!
  class func setOptionalSharedHistory(_ history: WebHistory!)
  func loadFromURL(_ URL: NSURL!) throws
  func saveToURL(_ URL: NSURL!) throws
  func addItems(_ newItems: [AnyObject]!)
  func removeItems(_ items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisitedOnDay(_ calendarDate: NSCalendarDate!) -> [AnyObject]!
  func itemForURL(_ URL: NSURL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
}
