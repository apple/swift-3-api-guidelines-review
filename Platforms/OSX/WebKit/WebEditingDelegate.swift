
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Typed
  case Pasted
  case Dropped
}
protocol WebEditingDelegate : NSObjectProtocol {
}
extension NSObject {
  class func webView(webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  class func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  class func webView(webView: WebView!, doCommandBySelector selector: Selector) -> Bool
  func webView(webView: WebView!, doCommandBySelector selector: Selector) -> Bool
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
  class func undoManagerForWebView(webView: WebView!) -> NSUndoManager!
  func undoManagerForWebView(webView: WebView!) -> NSUndoManager!
}
