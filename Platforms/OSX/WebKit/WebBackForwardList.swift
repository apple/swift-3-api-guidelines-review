
class WebBackForwardList : Object {
  func add(item: WebHistoryItem!)
  func goBack()
  func goForward()
  func go(to item: WebHistoryItem!)
  var backItem: WebHistoryItem! { get }
  var currentItem: WebHistoryItem! { get }
  var forwardItem: WebHistoryItem! { get }
  func back(limit limit: Int32) -> [AnyObject]!
  func forwardList(limit limit: Int32) -> [AnyObject]!
  var capacity: Int32
  var backListCount: Int32 { get }
  var forwardListCount: Int32 { get }
  func contains(item: WebHistoryItem!) -> Bool
  func item(at index: Int32) -> WebHistoryItem!
  init()
}
extension WebBackForwardList {
  func setPageCacheSize(size: Int)
  func pageCacheSize() -> Int
}
