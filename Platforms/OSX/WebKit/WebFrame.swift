
class WebFrame : NSObject {
  init!(name name: String!, webFrameView view: WebFrameView!, webView webView: WebView!)
  var name: String! { get }
  var webView: WebView! { get }
  var frameView: WebFrameView! { get }
  var DOMDocument: DOMDocument! { get }
  var frameElement: DOMHTMLElement! { get }
  func loadRequest(_ request: NSURLRequest!)
  func loadData(_ data: NSData!, MIMEType MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: NSURL!)
  func loadHTMLString(_ string: String!, baseURL URL: NSURL!)
  func loadAlternateHTMLString(_ string: String!, baseURL baseURL: NSURL!, forUnreachableURL unreachableURL: NSURL!)
  func loadArchive(_ archive: WebArchive!)
  var dataSource: WebDataSource? { get }
  var provisionalDataSource: WebDataSource! { get }
  func stopLoading()
  func reload()
  func reloadFromOrigin()
  func findFrameNamed(_ name: String!) -> WebFrame!
  var parentFrame: WebFrame! { get }
  var childFrames: [AnyObject]! { get }
  var windowObject: WebScriptObject! { get }
  var globalContext: JSGlobalContextRef { get }
  var javaScriptContext: JSContext! { get }
}
