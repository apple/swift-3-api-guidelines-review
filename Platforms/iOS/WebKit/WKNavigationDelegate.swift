
@available(iOS 8.0, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
@available(iOS 8.0, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  @available(iOS 9.0, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
