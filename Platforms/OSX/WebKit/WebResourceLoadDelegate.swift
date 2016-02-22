
protocol WebResourceLoadDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, identifierForInitialRequest request: NSURLRequest!, from dataSource: WebDataSource!) -> AnyObject!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, willSend request: NSURLRequest!, redirectResponse: NSURLResponse!, from dataSource: WebDataSource!) -> NSURLRequest!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive challenge: NSURLAuthenticationChallenge!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didCancel challenge: NSURLAuthenticationChallenge!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive response: NSURLResponse!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveContentLength length: Int, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFinishLoadingFrom dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFailLoadingWithError error: NSError!, from dataSource: WebDataSource!)
  optional func webView(sender: WebView!, plugInFailedWithError error: NSError!, dataSource: WebDataSource!)
}
