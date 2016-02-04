
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : NSObject {
  class func optionalSharedHistory() -> WebHistory!
  class func setOptionalSharedHistory(history: WebHistory!)
  func loadFromURL(URL: NSURL!) throws
  func saveToURL(URL: NSURL!) throws
  func addItems(newItems: [AnyObject]!)
  func removeItems(items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisitedOnDay(calendarDate: NSCalendarDate!) -> [AnyObject]!
  func itemForURL(URL: NSURL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
  init()
}
