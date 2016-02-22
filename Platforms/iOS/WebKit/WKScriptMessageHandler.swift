
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(iOS 8.0, *)
  func userContentController(userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
