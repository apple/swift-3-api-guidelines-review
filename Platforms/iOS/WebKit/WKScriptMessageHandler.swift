
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(iOS 8.0, *)
  func userContentController(_ userContentController: WKUserContentController, didReceiveScriptMessage message: WKScriptMessage)
}
