
enum UIGestureRecognizerState : Int {
  init?(rawValue: Int)
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
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
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
  func requireGestureRecognizerToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationInView(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, inView view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(tvOS 3.2, *)
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
