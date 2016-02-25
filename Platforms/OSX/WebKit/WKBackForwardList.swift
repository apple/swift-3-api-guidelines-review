
@available(OSX 10.10, *)
class WKBackForwardList : NSObject {
  var currentItem: WKBackForwardListItem? { get }
  var backItem: WKBackForwardListItem? { get }
  var forwardItem: WKBackForwardListItem? { get }
  func item(at index: Int) -> WKBackForwardListItem?
  var backList: [WKBackForwardListItem] { get }
  var forwardList: [WKBackForwardListItem] { get }
}
