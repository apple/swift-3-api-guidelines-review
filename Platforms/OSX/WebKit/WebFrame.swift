
class WebFrame : NSObject {
  init!(name: String!, webFrameView view: WebFrameView!, webView: WebView!)
  var name: String! { get }
  var webView: WebView! { get }
  var frameView: WebFrameView! { get }
  var DOMDocument: DOMDocument! { get }
  var frameElement: DOMHTMLElement! { get }
  func loadRequest(request: NSURLRequest!)
  func loadData(data: NSData!, MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: NSURL!)
  func loadHTMLString(string: String!, baseURL URL: NSURL!)
  func loadAlternateHTMLString(string: String!, baseURL: NSURL!, forUnreachableURL unreachableURL: NSURL!)
  func loadArchive(archive: WebArchive!)
  var dataSource: WebDataSource? { get }
  var provisionalDataSource: WebDataSource! { get }
  func stopLoading()
  func reload()
  func reloadFromOrigin()
  func findFrameNamed(name: String!) -> WebFrame!
  var parentFrame: WebFrame! { get }
  var childFrames: [AnyObject]! { get }
  var windowObject: WebScriptObject! { get }
  var globalContext: JSGlobalContextRef { get }
  var javaScriptContext: JSContext! { get }
  init()
}
