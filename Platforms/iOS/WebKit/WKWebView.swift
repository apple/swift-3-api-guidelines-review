
@available(iOS 8.0, *)
class WKWebView : UIView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var UIDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func loadRequest(request: NSURLRequest) -> WKNavigation?
  @available(iOS 9.0, *)
  func loadFileURL(URL: NSURL, allowingReadAccessToURL readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?
  @available(iOS 9.0, *)
  func loadData(data: NSData, MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?
  func goToBackForwardListItem(item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var URL: NSURL? { get }
  var loading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  var customUserAgent: String?
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  var scrollView: UIScrollView { get }
  convenience init(frame: CGRect)
  convenience init()
}
