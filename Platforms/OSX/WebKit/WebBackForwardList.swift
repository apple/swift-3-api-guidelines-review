
class WebBackForwardList : NSObject {
  func add(_ item: WebHistoryItem!)
  func goBack()
  func goForward()
  func go(to item: WebHistoryItem!)
  var backItem: WebHistoryItem! { get }
  var currentItem: WebHistoryItem! { get }
  var forwardItem: WebHistoryItem! { get }
  func back(withLimit limit: Int32) -> [AnyObject]!
  func forwardList(withLimit limit: Int32) -> [AnyObject]!
  var capacity: Int32
  var backListCount: Int32 { get }
  var forwardListCount: Int32 { get }
  func contains(_ item: WebHistoryItem!) -> Bool
  func item(at index: Int32) -> WebHistoryItem!
}
extension WebBackForwardList {
  func setPageCacheSize(_ size: Int)
  func pageCacheSize() -> Int
}
