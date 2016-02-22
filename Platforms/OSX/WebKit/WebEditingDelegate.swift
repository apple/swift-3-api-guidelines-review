
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case typed
  case pasted
  case dropped
}
protocol WebEditingDelegate : NSObjectProtocol {
}
extension NSObject {
  class func webView(webView: WebView!, shouldBeginEditingIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldBeginEditingIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldEndEditingIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldEndEditingIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldInsert node: DOMNode!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsert node: DOMNode!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldInsertText text: String!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertText text: String!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldDelete range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldDelete range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, to proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, to proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  class func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  class func webView(webView: WebView!, doCommandBy selector: Selector) -> Bool
  func webView(webView: WebView!, doCommandBy selector: Selector) -> Bool
  class func webViewDidBeginEditing(notification: NSNotification!)
  func webViewDidBeginEditing(notification: NSNotification!)
  class func webViewDidChange(notification: NSNotification!)
  func webViewDidChange(notification: NSNotification!)
  class func webViewDidEndEditing(notification: NSNotification!)
  func webViewDidEndEditing(notification: NSNotification!)
  class func webViewDidChangeTypingStyle(notification: NSNotification!)
  func webViewDidChangeTypingStyle(notification: NSNotification!)
  class func webViewDidChangeSelection(notification: NSNotification!)
  func webViewDidChangeSelection(notification: NSNotification!)
  class func undoManager(for webView: WebView!) -> NSUndoManager!
  func undoManager(for webView: WebView!) -> NSUndoManager!
}
