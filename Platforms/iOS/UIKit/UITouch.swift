
enum UITouchPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case began
  case moved
  case stationary
  case ended
  case cancelled
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case unavailable
  case available
}
@available(iOS 9.0, *)
enum UITouchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case direct
  case indirect
  @available(iOS 9.1, *)
  case stylus
}
@available(iOS 9.1, *)
struct UITouchProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var force: UITouchProperties { get }
  static var azimuth: UITouchProperties { get }
  static var altitude: UITouchProperties { get }
  static var location: UITouchProperties { get }
}
@available(iOS 2.0, *)
class UITouch : Object {
  var timestamp: TimeInterval { get }
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
  func location(in view: UIView?) -> CGPoint
  func previousLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func preciseLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func precisePreviousLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.0, *)
  var force: CGFloat { get }
  @available(iOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(iOS 9.1, *)
  func azimuthAngle(in view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  func azimuthUnitVector(in view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(iOS 9.1, *)
  var estimationUpdateIndex: Number? { get }
  @available(iOS 9.1, *)
  var estimatedProperties: UITouchProperties { get }
  @available(iOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}
