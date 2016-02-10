
@available(iOS 8.0, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
@available(iOS 8.0, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
protocol WKNavigationDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didCommit navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFinish navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSessionAuthChallengeDisposition, URLCredential?) -> Void)
  @available(iOS 9.0, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
