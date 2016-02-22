
@available(OSX 10.10, *)
class WKWebView : NSView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var uiDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func load(request: NSURLRequest) -> WKNavigation?
  @available(OSX 10.11, *)
  func loadFileURL(URL: NSURL, allowingReadAccessTo readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?
  @available(OSX 10.11, *)
  func load(data: NSData, mimeType MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?
  func go(to item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var url: NSURL? { get }
  var isLoading: Bool { get }
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
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, NSError?) -> Void)? = nil)
  var allowsBackForwardNavigationGestures: Bool
  @available(OSX 10.11, *)
  var customUserAgent: String?
  @available(OSX 10.11, *)
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(magnification: CGFloat, centeredAt point: CGPoint)
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
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
