
protocol WebResourceLoadDelegate : NSObjectProtocol {
  optional func webView(_ sender: WebView!, identifierForInitialRequest request: NSURLRequest!, fromDataSource dataSource: WebDataSource!) -> AnyObject!
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, willSendRequest request: NSURLRequest!, redirectResponse redirectResponse: NSURLResponse!, fromDataSource dataSource: WebDataSource!) -> NSURLRequest!
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge!, fromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge!, fromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didReceiveResponse response: NSURLResponse!, fromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didReceiveContentLength length: Int, fromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didFinishLoadingFromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, resource identifier: AnyObject!, didFailLoadingWithError error: NSError!, fromDataSource dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, plugInFailedWithError error: NSError!, dataSource dataSource: WebDataSource!)
}
