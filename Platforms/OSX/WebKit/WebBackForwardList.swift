
class WebBackForwardList : NSObject {
  func addItem(_ item: WebHistoryItem!)
  func goBack()
  func goForward()
  func goToItem(_ item: WebHistoryItem!)
  var backItem: WebHistoryItem! { get }
  var currentItem: WebHistoryItem! { get }
  var forwardItem: WebHistoryItem! { get }
  func backListWithLimit(_ limit: Int32) -> [AnyObject]!
  func forwardListWithLimit(_ limit: Int32) -> [AnyObject]!
  var capacity: Int32
  var backListCount: Int32 { get }
  var forwardListCount: Int32 { get }
  func containsItem(_ item: WebHistoryItem!) -> Bool
  func itemAtIndex(_ index: Int32) -> WebHistoryItem!
}
extension WebBackForwardList {
  func setPageCacheSize(_ size: Int)
  func pageCacheSize() -> Int
}
