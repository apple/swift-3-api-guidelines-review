
enum UIEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Touches
  case Motion
  case RemoteControl
  @available(tvOS 9.0, *)
  case Presses
}
enum UIEventSubtype : Int {
  init?(rawValue: Int)
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
@available(tvOS 2.0, *)
class UIEvent : Object {
  @available(tvOS 3.0, *)
  var type: UIEventType { get }
  @available(tvOS 3.0, *)
  var subtype: UIEventSubtype { get }
  var timestamp: TimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesFor(window: UIWindow) -> Set<UITouch>?
  func touchesFor(view: UIView) -> Set<UITouch>?
  @available(tvOS 3.2, *)
  func touchesFor(gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(tvOS 9.0, *)
  func coalescedTouchesFor(touch: UITouch) -> [UITouch]?
  @available(tvOS 9.0, *)
  func predictedTouchesFor(touch: UITouch) -> [UITouch]?
  init()
}
