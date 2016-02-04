
enum UITouchPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Moved
  case Stationary
  case Ended
  case Cancelled
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unavailable
  case Available
}
@available(iOS 9.0, *)
enum UITouchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Direct
  case Indirect
  @available(iOS 9.1, *)
  case Stylus
}
@available(iOS 9.1, *)
struct UITouchProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Force: UITouchProperties { get }
  static var Azimuth: UITouchProperties { get }
  static var Altitude: UITouchProperties { get }
  static var Location: UITouchProperties { get }
}
@available(iOS 2.0, *)
class UITouch : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  @available(iOS 9.0, *)
  var type: UITouchType { get }
  @available(iOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(iOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationInView(view: UIView?) -> CGPoint
  func previousLocationInView(view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func preciseLocationInView(view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func precisePreviousLocationInView(view: UIView?) -> CGPoint
  @available(iOS 9.0, *)
  var force: CGFloat { get }
  @available(iOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(iOS 9.1, *)
  func azimuthAngleInView(view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  func azimuthUnitVectorInView(view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(iOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(iOS 9.1, *)
  var estimatedProperties: UITouchProperties { get }
  @available(iOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}
