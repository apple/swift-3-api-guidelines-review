
enum UITouchPhase : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Moved
  case Stationary
  case Ended
  case Cancelled
}
enum UIForceTouchCapability : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unavailable
  case Available
}
@available(tvOS 9.0, *)
enum UITouchType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Direct
  case Indirect
  @available(tvOS 9.1, *)
  case Stylus
}
@available(tvOS 9.1, *)
struct UITouchProperties : OptionSetType {
  init(rawValue rawValue: Int)
  let rawValue: Int
  static var Force: UITouchProperties { get }
  static var Azimuth: UITouchProperties { get }
  static var Altitude: UITouchProperties { get }
  static var Location: UITouchProperties { get }
}
@available(tvOS 2.0, *)
class UITouch : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  @available(tvOS 9.0, *)
  var type: UITouchType { get }
  @available(tvOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(tvOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(tvOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationInView(_ view: UIView?) -> CGPoint
  func previousLocationInView(_ view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func preciseLocationInView(_ view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func precisePreviousLocationInView(_ view: UIView?) -> CGPoint
  @available(tvOS 9.0, *)
  var force: CGFloat { get }
  @available(tvOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(tvOS 9.1, *)
  func azimuthAngleInView(_ view: UIView?) -> CGFloat
  @available(tvOS 9.1, *)
  func azimuthUnitVectorInView(_ view: UIView?) -> CGVector
  @available(tvOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(tvOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(tvOS 9.1, *)
  var estimatedProperties: UITouchProperties { get }
  @available(tvOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
}
