
class WebBackForwardList : NSObject {
  func addItem(item: WebHistoryItem!)
  func goBack()
  func goForward()
  func goToItem(item: WebHistoryItem!)
  var backItem: WebHistoryItem! { get }
  var currentItem: WebHistoryItem! { get }
  var forwardItem: WebHistoryItem! { get }
  func backListWithLimit(limit: Int32) -> [AnyObject]!
  func forwardListWithLimit(limit: Int32) -> [AnyObject]!
  var capacity: Int32
  var backListCount: Int32 { get }
  var forwardListCount: Int32 { get }
  func containsItem(item: WebHistoryItem!) -> Bool
  func itemAtIndex(index: Int32) -> WebHistoryItem!
  init()
}
extension WebBackForwardList {
  func setPageCacheSize(size: Int)
  func pageCacheSize() -> Int
}
