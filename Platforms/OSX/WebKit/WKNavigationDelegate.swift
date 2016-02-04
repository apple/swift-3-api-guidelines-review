
@available(OSX 10.10, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
@available(OSX 10.10, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  @available(OSX 10.11, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
