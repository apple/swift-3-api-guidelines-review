
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Typed
  case Pasted
  case Dropped
}
protocol WebEditingDelegate : ObjectProtocol {
}
extension Object {
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
  class func webViewDidBeginEditing(notification: Notification!)
  func webViewDidBeginEditing(notification: Notification!)
  class func webViewDidChange(notification: Notification!)
  func webViewDidChange(notification: Notification!)
  class func webViewDidEndEditing(notification: Notification!)
  func webViewDidEndEditing(notification: Notification!)
  class func webViewDidChangeTypingStyle(notification: Notification!)
  func webViewDidChangeTypingStyle(notification: Notification!)
  class func webViewDidChangeSelection(notification: Notification!)
  func webViewDidChangeSelection(notification: Notification!)
  class func undoManagerFor(webView: WebView!) -> UndoManager!
  func undoManagerFor(webView: WebView!) -> UndoManager!
}
