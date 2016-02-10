
let WebHistoryItemChangedNotification: String
class WebHistoryItem : Object, Copying {
  init!(urlString URLString: String!, title: String!, lastVisitedTimeInterval time: TimeInterval)
  var originalURLString: String! { get }
  var urlString: String! { get }
  var title: String! { get }
  var lastVisitedTimeInterval: TimeInterval { get }
  var alternateTitle: String!
  var icon: NSImage! { get }
  init()
  func copy(with zone: Zone = nil) -> AnyObject
}
