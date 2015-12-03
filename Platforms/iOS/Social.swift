
@available(iOS 8.0, *)
class SLComposeServiceViewController : UIViewController, UITextViewDelegate {
  func presentationAnimationDidFinish()
  var textView: UITextView! { get }
  var contentText: String! { get }
  var placeholder: String!
  func didSelectPost()
  func didSelectCancel()
  func cancel()
  func isContentValid() -> Bool
  func validateContent()
  var charactersRemaining: NSNumber!
  func configurationItems() -> [AnyObject]!
  func reloadConfigurationItems()
  func pushConfigurationViewController(viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  func textViewShouldBeginEditing(textView: UITextView) -> Bool
  @available(iOS 8.0, *)
  func textViewShouldEndEditing(textView: UITextView) -> Bool
  @available(iOS 8.0, *)
  func textViewDidBeginEditing(textView: UITextView)
  @available(iOS 8.0, *)
  func textViewDidEndEditing(textView: UITextView)
  @available(iOS 8.0, *)
  func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(iOS 8.0, *)
  func textViewDidChange(textView: UITextView)
  @available(iOS 8.0, *)
  func textViewDidChangeSelection(textView: UITextView)
  @available(iOS 7.0, *)
  func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
  @available(iOS 8.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 8.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 8.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 8.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 8.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 8.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
typealias SLComposeSheetConfigurationItemTapHandler = () -> Void
@available(iOS 8.0, *)
class SLComposeSheetConfigurationItem : NSObject {
  init!()
  var title: String!
  var value: String!
  var valuePending: Bool
  var tapHandler: SLComposeSheetConfigurationItemTapHandler!
}
enum SLComposeViewControllerResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancelled
  case Done
}
typealias SLComposeViewControllerCompletionHandler = (SLComposeViewControllerResult) -> Void
@available(iOS 6.0, *)
class SLComposeViewController : UIViewController {
  class func isAvailableForServiceType(serviceType: String!) -> Bool
  /*not inherited*/ init!(forServiceType serviceType: String!)
  var serviceType: String! { get }
  func setInitialText(text: String!) -> Bool
  func addImage(image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func addURL(url: NSURL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (NSData!, NSHTTPURLResponse!, NSError!) -> Void
@available(iOS 6.0, *)
class SLRequest : NSObject {
  /*not inherited*/ init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, URL url: NSURL!, parameters: [NSObject : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var URL: NSURL! { get }
  var parameters: [NSObject : AnyObject]! { get }
  func addMultipartData(data: NSData!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> NSURLRequest!
  func performRequestWithHandler(handler: SLRequestHandler!)
  init()
}
@available(iOS 6.0, *)
let SLServiceTypeTwitter: String
@available(iOS 6.0, *)
let SLServiceTypeFacebook: String
@available(iOS 6.0, *)
let SLServiceTypeSinaWeibo: String
@available(iOS 7.0, *)
let SLServiceTypeTencentWeibo: String
