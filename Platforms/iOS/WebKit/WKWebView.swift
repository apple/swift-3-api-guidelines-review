
@available(iOS 8.0, *)
class WKWebView : UIView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var uiDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func load(request: URLRequest) -> WKNavigation?
  @available(iOS 9.0, *)
  func loadFileURL(URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: URL?) -> WKNavigation?
  @available(iOS 9.0, *)
  func load(data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation?
  func go(to item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var url: URL? { get }
  var isLoading: Bool { get }
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
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, Error?) -> Void)? = nil)
  var allowsBackForwardNavigationGestures: Bool
  @available(iOS 9.0, *)
  var customUserAgent: String?
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  var scrollView: UIScrollView { get }
  convenience init(frame: CGRect)
  convenience init()
}
