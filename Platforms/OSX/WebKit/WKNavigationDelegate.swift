
@available(OSX 10.10, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
@available(OSX 10.10, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  @available(OSX 10.10, *)
  optional func webView(_ webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  @available(OSX 10.11, *)
  optional func webViewWebContentProcessDidTerminate(_ webView: WKWebView)
}
