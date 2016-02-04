
@available(OSX 10.10, *)
class WKWebView : NSView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var UIDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func loadRequest(request: NSURLRequest) -> WKNavigation?
  @available(OSX 10.11, *)
  func loadFileURL(URL: NSURL, allowingReadAccessToURL readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?
  @available(OSX 10.11, *)
  func loadData(data: NSData, MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?
  func goToBackForwardListItem(item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var URL: NSURL? { get }
  var loading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  @available(OSX 10.11, *)
  var certificateChain: [AnyObject] { get }
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  func goBack() -> WKNavigation?
  func goForward() -> WKNavigation?
  func reload() -> WKNavigation?
  func reloadFromOrigin() -> WKNavigation?
  func stopLoading()
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, NSError?) -> Void)?)
  var allowsBackForwardNavigationGestures: Bool
  @available(OSX 10.11, *)
  var customUserAgent: String?
  @available(OSX 10.11, *)
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(magnification: CGFloat, centeredAtPoint point: CGPoint)
  convenience init(frame frameRect: NSRect)
  convenience init()
}
extension WKWebView : NSUserInterfaceValidations {
  @IBAction func goBack(sender: AnyObject?)
  @IBAction func goForward(sender: AnyObject?)
  @IBAction func reload(sender: AnyObject?)
  @IBAction func reloadFromOrigin(sender: AnyObject?)
  @IBAction func stopLoading(sender: AnyObject?)
  @available(OSX 10.10, *)
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
