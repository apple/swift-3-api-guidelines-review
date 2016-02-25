
@available(OSX 10.10, *)
class WKWebView : NSView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var UIDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame frame: CGRect, configuration configuration: WKWebViewConfiguration)
  func loadRequest(_ request: NSURLRequest) -> WKNavigation?
  @available(OSX 10.11, *)
  func loadFileURL(_ URL: NSURL, allowingReadAccessToURL readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(_ string: String, baseURL baseURL: NSURL?) -> WKNavigation?
  @available(OSX 10.11, *)
  func loadData(_ data: NSData, MIMEType MIMEType: String, characterEncodingName characterEncodingName: String, baseURL baseURL: NSURL) -> WKNavigation?
  func goToBackForwardListItem(_ item: WKBackForwardListItem) -> WKNavigation?
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
  func evaluateJavaScript(_ javaScriptString: String, completionHandler completionHandler: ((AnyObject?, NSError?) -> Void)?)
  var allowsBackForwardNavigationGestures: Bool
  @available(OSX 10.11, *)
  var customUserAgent: String?
  @available(OSX 10.11, *)
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(_ magnification: CGFloat, centeredAtPoint point: CGPoint)
}
extension WKWebView : NSUserInterfaceValidations {
  @IBAction func goBack(_ sender: AnyObject?)
  @IBAction func goForward(_ sender: AnyObject?)
  @IBAction func reload(_ sender: AnyObject?)
  @IBAction func reloadFromOrigin(_ sender: AnyObject?)
  @IBAction func stopLoading(_ sender: AnyObject?)
  @available(OSX 10.10, *)
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
}
