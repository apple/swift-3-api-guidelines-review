
enum NSAnimationCurve : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case easeInOut
  case easeIn
  case easeOut
  case linear
}
enum NSAnimationBlockingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case blocking
  case nonblocking
  case nonblockingThreaded
}
typealias NSAnimationProgress = Float
let NSAnimationProgressMarkNotification: String
let NSAnimationProgressMark: String
class NSAnimation : NSObject, NSCopying, NSCoding {
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  func start()
  func stop()
  var isAnimating: Bool { get }
  var currentProgress: NSAnimationProgress
  var duration: NSTimeInterval
  var animationBlockingMode: NSAnimationBlockingMode
  var frameRate: Float
  var animationCurve: NSAnimationCurve
  var currentValue: Float { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSAnimationDelegate?
  var progressMarks: [NSNumber]
  func addProgressMark(progressMark: NSAnimationProgress)
  func removeProgressMark(progressMark: NSAnimationProgress)
  func start(when animation: NSAnimation, reachesProgress startProgress: NSAnimationProgress)
  func stop(when animation: NSAnimation, reachesProgress stopProgress: NSAnimationProgress)
  func clearStart()
  func clearStop()
  var runLoopModesForAnimating: [String]? { get }
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __aFlags {
  var delegateAnimationShouldStart: UInt32
  var delegateAnimationDidStop: UInt32
  var delegateAnimationDidEnd: UInt32
  var delegateAnimationValueForProgress: UInt32
  var delegateAnimationDidReachProgressMark: UInt32
  var animating: UInt32
  var blocking: UInt32
  var sendProgressAllTheTime: UInt32
  var reserved: UInt32
  init()
  init(delegateAnimationShouldStart: UInt32, delegateAnimationDidStop: UInt32, delegateAnimationDidEnd: UInt32, delegateAnimationValueForProgress: UInt32, delegateAnimationDidReachProgressMark: UInt32, animating: UInt32, blocking: UInt32, sendProgressAllTheTime: UInt32, reserved: UInt32)
}
struct __aSettings {
  var animationCurve: UInt32
  var animationBlockingMode: UInt32
  var reserved: UInt32
  init()
  init(animationCurve: UInt32, animationBlockingMode: UInt32, reserved: UInt32)
}
protocol NSAnimationDelegate : NSObjectProtocol {
  optional func animationShouldStart(animation: NSAnimation) -> Bool
  optional func animationDidStop(animation: NSAnimation)
  optional func animationDidEnd(animation: NSAnimation)
  optional func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  optional func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
}
let NSViewAnimationTargetKey: String
let NSViewAnimationStartFrameKey: String
let NSViewAnimationEndFrameKey: String
let NSViewAnimationEffectKey: String
let NSViewAnimationFadeInEffect: String
let NSViewAnimationFadeOutEffect: String
class NSViewAnimation : NSAnimation {
  init(viewAnimations: [[String : AnyObject]])
  var viewAnimations: [[String : AnyObject]]
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  init()
  init?(coder aDecoder: NSCoder)
}
struct __vaFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
protocol NSAnimatablePropertyContainer {
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject] { get set }
  @available(OSX 10.5, *)
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  static func defaultAnimation(forKey key: String) -> AnyObject?
}
@available(OSX 10.5, *)
let NSAnimationTriggerOrderIn: String
@available(OSX 10.5, *)
let NSAnimationTriggerOrderOut: String
