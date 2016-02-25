
enum UIGestureRecognizerState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Possible
  case Began
  case Changed
  case Ended
  case Cancelled
  case Failed
  static var Recognized: UIGestureRecognizerState { get }
}
@available(tvOS 3.2, *)
class UIGestureRecognizer : NSObject {
  init(target target: AnyObject?, action action: Selector)
  func addTarget(_ target: AnyObject, action action: Selector)
  func removeTarget(_ target: AnyObject?, action action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var enabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(tvOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(tvOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  func requireGestureRecognizerToFail(_ otherGestureRecognizer: UIGestureRecognizer)
  func locationInView(_ view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(_ touchIndex: Int, inView view: UIView?) -> CGPoint
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(tvOS 3.2, *)
  optional func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
