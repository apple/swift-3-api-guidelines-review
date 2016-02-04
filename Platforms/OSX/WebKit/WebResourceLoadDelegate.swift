
protocol WebResourceLoadDelegate : ObjectProtocol {
  optional func webView(sender: WebView!, identifierForInitialRequest request: URLRequest!, from dataSource: WebDataSource!) -> AnyObject!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, willSend request: URLRequest!, redirectResponse: URLResponse!, from dataSource: WebDataSource!) -> URLRequest!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive challenge: URLAuthenticationChallenge!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didCancel challenge: URLAuthenticationChallenge!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive response: URLResponse!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveContentLength length: Int, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFinishLoadingFrom dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFailLoadingWithError error: Error!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, plugInFailedWithError error: Error!, dataSource: WebDataSource!)
}
