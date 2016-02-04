
class CAAnimation : NSObject, NSCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var removedOnCompletion: Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  @available(iOS 2.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var additive: Bool
  var cumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: NSCoder)
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [NSNumber]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [NSNumber]?
  var continuityValues: [NSNumber]?
  var biasValues: [NSNumber]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
let kCAAnimationLinear: String
@available(iOS 2.0, *)
let kCAAnimationDiscrete: String
@available(iOS 2.0, *)
let kCAAnimationPaced: String
@available(iOS 4.0, *)
let kCAAnimationCubic: String
@available(iOS 4.0, *)
let kCAAnimationCubicPaced: String
@available(iOS 2.0, *)
let kCAAnimationRotateAuto: String
@available(iOS 2.0, *)
let kCAAnimationRotateAutoReverse: String
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: NSCoder)
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
let kCATransitionFade: String
@available(iOS 2.0, *)
let kCATransitionMoveIn: String
@available(iOS 2.0, *)
let kCATransitionPush: String
@available(iOS 2.0, *)
let kCATransitionReveal: String
@available(iOS 2.0, *)
let kCATransitionFromRight: String
@available(iOS 2.0, *)
let kCATransitionFromLeft: String
@available(iOS 2.0, *)
let kCATransitionFromTop: String
@available(iOS 2.0, *)
let kCATransitionFromBottom: String
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: NSCoder)
}
