
@available(iOS 8.0, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
@available(iOS 8.0, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  @available(iOS 9.0, *)
  optional func webViewWebContentProcessDidTerminate(_ webView: WKWebView)
}
