
protocol WKUIDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  @available(OSX 10.11, *)
  optional func webViewDidClose(webView: WKWebView)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}
