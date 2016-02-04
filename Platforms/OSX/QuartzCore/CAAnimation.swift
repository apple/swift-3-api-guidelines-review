
class CAAnimation : Object, Coding, Copying, CAMediaTiming, CAAction {
  class func defaultValueForKey(key: String) -> AnyObject?
  func shouldArchiveValueForKey(key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var isRemovedOnCompletion: Bool
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  @available(OSX 10.0, *)
  func runActionForKey(event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Object {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: Coder)
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [Number]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [Number]?
  var continuityValues: [Number]?
  var biasValues: [Number]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.5, *)
let kCAAnimationLinear: String
@available(OSX 10.5, *)
let kCAAnimationDiscrete: String
@available(OSX 10.5, *)
let kCAAnimationPaced: String
@available(OSX 10.7, *)
let kCAAnimationCubic: String
@available(OSX 10.7, *)
let kCAAnimationCubicPaced: String
@available(OSX 10.5, *)
let kCAAnimationRotateAuto: String
@available(OSX 10.5, *)
let kCAAnimationRotateAutoReverse: String
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.5, *)
let kCATransitionFade: String
@available(OSX 10.5, *)
let kCATransitionMoveIn: String
@available(OSX 10.5, *)
let kCATransitionPush: String
@available(OSX 10.5, *)
let kCATransitionReveal: String
@available(OSX 10.5, *)
let kCATransitionFromRight: String
@available(OSX 10.5, *)
let kCATransitionFromLeft: String
@available(OSX 10.5, *)
let kCATransitionFromTop: String
@available(OSX 10.5, *)
let kCATransitionFromBottom: String
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: Coder)
}
