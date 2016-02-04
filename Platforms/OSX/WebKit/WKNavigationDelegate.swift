
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
protocol WKNavigationDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didCommit navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFinish navigation: WKNavigation!)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSessionAuthChallengeDisposition, URLCredential?) -> Void)
  @available(OSX 10.11, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
