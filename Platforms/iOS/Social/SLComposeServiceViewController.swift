
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
  var charactersRemaining: Number!
  func configurationItems() -> [AnyObject]!
  func reloadConfigurationItems()
  func pushConfigurationViewController(viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
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
  func textView(textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 8.0, *)
  func textViewDidChange(textView: UITextView)
  @available(iOS 8.0, *)
  func textViewDidChangeSelection(textView: UITextView)
  @available(iOS 7.0, *)
  func textView(textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  func textView(textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
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
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, with view: UIView?)
  @available(iOS 8.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 8.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(iOS 8.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
}
