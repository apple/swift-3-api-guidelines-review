
class WebFrame : NSObject {
  init!(name: String!, webFrameView view: WebFrameView!, webView: WebView!)
  var name: String! { get }
  var webView: WebView! { get }
  var frameView: WebFrameView! { get }
  var domDocument: DOMDocument! { get }
  var frameElement: DOMHTMLElement! { get }
  func load(request: NSURLRequest!)
  func load(data: NSData!, mimeType MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: NSURL!)
  func loadHTMLString(string: String!, baseURL URL: NSURL!)
  func loadAlternateHTMLString(string: String!, baseURL: NSURL!, forUnreachableURL unreachableURL: NSURL!)
  func load(archive: WebArchive!)
  var dataSource: WebDataSource? { get }
  var provisionalDataSource: WebDataSource! { get }
  func stopLoading()
  func reload()
  func reloadFromOrigin()
  func findNamed(name: String!) -> WebFrame!
  var parent: WebFrame! { get }
  var childFrames: [AnyObject]! { get }
  var windowObject: WebScriptObject! { get }
  var globalContext: JSGlobalContextRef { get }
  var javaScriptContext: JSContext! { get }
  init()
}
