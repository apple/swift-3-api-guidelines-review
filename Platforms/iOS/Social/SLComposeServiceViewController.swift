
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
  func pushConfigurationViewController(_ viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
  @available(iOS 8.0, *)
  func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
  @available(iOS 8.0, *)
  func textViewShouldEndEditing(_ textView: UITextView) -> Bool
  @available(iOS 8.0, *)
  func textViewDidBeginEditing(_ textView: UITextView)
  @available(iOS 8.0, *)
  func textViewDidEndEditing(_ textView: UITextView)
  @available(iOS 8.0, *)
  func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 8.0, *)
  func textViewDidChange(_ textView: UITextView)
  @available(iOS 8.0, *)
  func textViewDidChangeSelection(_ textView: UITextView)
  @available(iOS 7.0, *)
  func textView(_ textView: UITextView, shouldInteractWith URL: NSURL, in characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
  @available(iOS 8.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 8.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 8.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 8.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 8.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 8.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(iOS 8.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
}
