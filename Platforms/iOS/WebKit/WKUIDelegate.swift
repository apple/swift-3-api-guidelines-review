
protocol WKUIDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  @available(iOS 9.0, *)
  optional func webViewDidClose(webView: WKWebView)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}
