
enum UIWebViewNavigationType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
enum UIWebPaginationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unpaginated
  case LeftToRight
  case TopToBottom
  case BottomToTop
  case RightToLeft
}
enum UIWebPaginationBreakingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Page
  case Column
}
@available(iOS 2.0, *)
class UIWebView : UIView, NSCoding, UIScrollViewDelegate {
  unowned(unsafe) var delegate: @sil_unmanaged UIWebViewDelegate?
  @available(iOS 5.0, *)
  var scrollView: UIScrollView { get }
  func loadRequest(_ request: NSURLRequest)
  func loadHTMLString(_ string: String, baseURL baseURL: NSURL?)
  func loadData(_ data: NSData, MIMEType MIMEType: String, textEncodingName textEncodingName: String, baseURL baseURL: NSURL)
  var request: NSURLRequest? { get }
  func reload()
  func stopLoading()
  func goBack()
  func goForward()
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  var loading: Bool { get }
  func stringByEvaluatingJavaScriptFromString(_ script: String) -> String?
  var scalesPageToFit: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 4.0, *)
  var allowsInlineMediaPlayback: Bool
  @available(iOS 4.0, *)
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS 5.0, *)
  var mediaPlaybackAllowsAirPlay: Bool
  @available(iOS 6.0, *)
  var suppressesIncrementalRendering: Bool
  @available(iOS 6.0, *)
  var keyboardDisplayRequiresUserAction: Bool
  @available(iOS 7.0, *)
  var paginationMode: UIWebPaginationMode
  @available(iOS 7.0, *)
  var paginationBreakingMode: UIWebPaginationBreakingMode
  @available(iOS 7.0, *)
  var pageLength: CGFloat
  @available(iOS 7.0, *)
  var gapBetweenPages: CGFloat
  @available(iOS 7.0, *)
  var pageCount: Int { get }
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  @available(iOS 2.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
}
protocol UIWebViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func webView(_ webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType navigationType: UIWebViewNavigationType) -> Bool
  @available(iOS 2.0, *)
  optional func webViewDidStartLoad(_ webView: UIWebView)
  @available(iOS 2.0, *)
  optional func webViewDidFinishLoad(_ webView: UIWebView)
  @available(iOS 2.0, *)
  optional func webView(_ webView: UIWebView, didFailLoadWithError error: NSError?)
}
