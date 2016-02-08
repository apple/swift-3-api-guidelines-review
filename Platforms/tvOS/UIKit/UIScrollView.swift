
enum UIScrollViewIndicatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case black
  case white
}
@available(tvOS 7.0, *)
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case onDrag
  case interactive
}
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateNormal: CGFloat
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateFast: CGFloat
@available(tvOS 2.0, *)
class UIScrollView : UIView, Coding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var isDirectionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var isScrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  @available(tvOS 3.0, *)
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var isTracking: Bool { get }
  var isDragging: Bool { get }
  var isDecelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelIn(contentView view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(tvOS 3.0, *)
  var zoomScale: CGFloat
  @available(tvOS 3.0, *)
  func setZoomScale(scale: CGFloat, animated: Bool)
  @available(tvOS 3.0, *)
  func zoomTo(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var isZooming: Bool { get }
  var isZoomBouncing: Bool { get }
  @available(tvOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(tvOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(tvOS 9.0, *)
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  @available(tvOS 7.0, *)
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UIScrollViewDelegate : ObjectProtocol {
  @available(tvOS 2.0, *)
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  optional func scrollViewShouldScrollTo(top scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  optional func scrollViewDidScrollTo(top scrollView: UIScrollView)
}
