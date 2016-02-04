
protocol WebFrameLoadDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, didStartProvisionalLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveServerRedirectForProvisionalLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFailProvisionalLoadWithError error: NSError!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCommitLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveTitle title: String!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveIcon image: NSImage!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFinishLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFailLoadWithError error: NSError!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didChangeLocationWithinPageForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, willPerformClientRedirectToURL URL: NSURL!, delay seconds: NSTimeInterval, fireDate date: NSDate!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCancelClientRedirectForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, willCloseFrame frame: WebFrame!)
  @available(OSX 10.4, *)
  optional func webView(webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, forFrame frame: WebFrame!)
  @available(OSX 10.9, *)
  optional func webView(webView: WebView!, didCreateJavaScriptContext context: JSContext!, forFrame frame: WebFrame!)
}
