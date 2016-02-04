
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(OSX 10.10, *)
  func userContentController(userContentController: WKUserContentController, didReceiveScriptMessage message: WKScriptMessage)
}
