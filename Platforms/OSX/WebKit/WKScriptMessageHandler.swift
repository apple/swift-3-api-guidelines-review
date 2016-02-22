
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(OSX 10.10, *)
  func userContentController(userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
