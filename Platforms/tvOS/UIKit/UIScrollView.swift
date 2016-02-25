
enum UIScrollViewIndicatorStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  case White
}
@available(tvOS 7.0, *)
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case OnDrag
  case Interactive
}
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateNormal: CGFloat
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateFast: CGFloat
@available(tvOS 2.0, *)
class UIScrollView : UIView, NSCoding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var directionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var scrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  @available(tvOS 3.0, *)
  var decelerationRate: CGFloat
  func setContentOffset(_ contentOffset: CGPoint, animated animated: Bool)
  func scrollRectToVisible(_ rect: CGRect, animated animated: Bool)
  func flashScrollIndicators()
  var tracking: Bool { get }
  var dragging: Bool { get }
  var decelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(_ touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(_ view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(tvOS 3.0, *)
  var zoomScale: CGFloat
  @available(tvOS 3.0, *)
  func setZoomScale(_ scale: CGFloat, animated animated: Bool)
  @available(tvOS 3.0, *)
  func zoomToRect(_ rect: CGRect, animated animated: Bool)
  var bouncesZoom: Bool
  var zooming: Bool { get }
  var zoomBouncing: Bool { get }
  @available(tvOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(tvOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(tvOS 9.0, *)
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  @available(tvOS 7.0, *)
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  optional func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  optional func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  optional func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  optional func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  optional func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
}
