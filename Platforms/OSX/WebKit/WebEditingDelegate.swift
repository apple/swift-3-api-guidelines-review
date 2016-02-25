
enum WebViewInsertAction : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Typed
  case Pasted
  case Dropped
}
protocol WebEditingDelegate : NSObjectProtocol {
}
extension NSObject {
  class func webView(_ webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  func webView(_ webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(_ webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  func webView(_ webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(_ webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(_ webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(_ webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(_ webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(_ webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  func webView(_ webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  class func webView(_ webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  func webView(_ webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  class func webView(_ webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  func webView(_ webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  class func webView(_ webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  func webView(_ webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  class func webView(_ webView: WebView!, doCommandBySelector selector: Selector) -> Bool
  func webView(_ webView: WebView!, doCommandBySelector selector: Selector) -> Bool
  class func webViewDidBeginEditing(_ notification: NSNotification!)
  func webViewDidBeginEditing(_ notification: NSNotification!)
  class func webViewDidChange(_ notification: NSNotification!)
  func webViewDidChange(_ notification: NSNotification!)
  class func webViewDidEndEditing(_ notification: NSNotification!)
  func webViewDidEndEditing(_ notification: NSNotification!)
  class func webViewDidChangeTypingStyle(_ notification: NSNotification!)
  func webViewDidChangeTypingStyle(_ notification: NSNotification!)
  class func webViewDidChangeSelection(_ notification: NSNotification!)
  func webViewDidChangeSelection(_ notification: NSNotification!)
  class func undoManagerForWebView(_ webView: WebView!) -> NSUndoManager!
  func undoManagerForWebView(_ webView: WebView!) -> NSUndoManager!
}
