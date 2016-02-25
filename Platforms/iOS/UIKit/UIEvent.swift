
enum UIEventType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Touches
  case Motion
  case RemoteControl
  @available(iOS 9.0, *)
  case Presses
}
enum UIEventSubtype : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case MotionShake
  case RemoteControlPlay
  case RemoteControlPause
  case RemoteControlStop
  case RemoteControlTogglePlayPause
  case RemoteControlNextTrack
  case RemoteControlPreviousTrack
  case RemoteControlBeginSeekingBackward
  case RemoteControlEndSeekingBackward
  case RemoteControlBeginSeekingForward
  case RemoteControlEndSeekingForward
}
@available(iOS 2.0, *)
class UIEvent : NSObject {
  @available(iOS 3.0, *)
  var type: UIEventType { get }
  @available(iOS 3.0, *)
  var subtype: UIEventSubtype { get }
  var timestamp: NSTimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesForWindow(_ window: UIWindow) -> Set<UITouch>?
  func touchesForView(_ view: UIView) -> Set<UITouch>?
  @available(iOS 3.2, *)
  func touchesForGestureRecognizer(_ gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(iOS 9.0, *)
  func coalescedTouchesForTouch(_ touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  func predictedTouchesForTouch(_ touch: UITouch) -> [UITouch]?
}
