
enum UIEventType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case touches
  case motion
  case remoteControl
  @available(tvOS 9.0, *)
  case presses
}
enum UIEventSubtype : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case motionShake
  case remoteControlPlay
  case remoteControlPause
  case remoteControlStop
  case remoteControlTogglePlayPause
  case remoteControlNextTrack
  case remoteControlPreviousTrack
  case remoteControlBeginSeekingBackward
  case remoteControlEndSeekingBackward
  case remoteControlBeginSeekingForward
  case remoteControlEndSeekingForward
}
@available(tvOS 2.0, *)
class UIEvent : NSObject {
  @available(tvOS 3.0, *)
  var type: UIEventType { get }
  @available(tvOS 3.0, *)
  var subtype: UIEventSubtype { get }
  var timestamp: NSTimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touches(for window: UIWindow) -> Set<UITouch>?
  func touches(for view: UIView) -> Set<UITouch>?
  @available(tvOS 3.2, *)
  func touches(for gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(tvOS 9.0, *)
  func coalescedTouches(for touch: UITouch) -> [UITouch]?
  @available(tvOS 9.0, *)
  func predictedTouches(for touch: UITouch) -> [UITouch]?
}
