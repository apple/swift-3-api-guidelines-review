
protocol WebFrameLoadDelegate : ObjectProtocol {
  optional func webView(sender: WebView!, didStartProvisionalLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveServerRedirectForProvisionalLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didFailProvisionalLoadWithError error: Error!, for frame: WebFrame!)
  optional func webView(sender: WebView!, didCommitLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveTitle title: String!, for frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveIcon image: NSImage!, for frame: WebFrame!)
  optional func webView(sender: WebView!, didFinishLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didFailLoadWithError error: Error!, for frame: WebFrame!)
  optional func webView(sender: WebView!, didChangeLocationWithinPageFor frame: WebFrame!)
  optional func webView(sender: WebView!, willPerformClientRedirectTo URL: URL!, delay seconds: TimeInterval, fire date: Date!, for frame: WebFrame!)
  optional func webView(sender: WebView!, didCancelClientRedirectFor frame: WebFrame!)
  optional func webView(sender: WebView!, willClose frame: WebFrame!)
  @available(OSX 10.4, *)
  optional func webView(webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, for frame: WebFrame!)
  @available(OSX 10.9, *)
  optional func webView(webView: WebView!, didCreateJavaScriptContext context: JSContext!, for frame: WebFrame!)
}
