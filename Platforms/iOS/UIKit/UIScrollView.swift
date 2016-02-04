
enum UIScrollViewIndicatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  case White
}
@available(iOS 7.0, *)
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case OnDrag
  case Interactive
}
@available(iOS 3.0, *)
let UIScrollViewDecelerationRateNormal: CGFloat
@available(iOS 3.0, *)
let UIScrollViewDecelerationRateFast: CGFloat
@available(iOS 2.0, *)
class UIScrollView : UIView, NSCoding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var directionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var pagingEnabled: Bool
  var scrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  @available(iOS 3.0, *)
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var tracking: Bool { get }
  var dragging: Bool { get }
  var decelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(iOS 3.0, *)
  var zoomScale: CGFloat
  @available(iOS 3.0, *)
  func setZoomScale(scale: CGFloat, animated: Bool)
  @available(iOS 3.0, *)
  func zoomToRect(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var zooming: Bool { get }
  var zoomBouncing: Bool { get }
  var scrollsToTop: Bool
  @available(iOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(iOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(iOS 7.0, *)
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  optional func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  optional func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
