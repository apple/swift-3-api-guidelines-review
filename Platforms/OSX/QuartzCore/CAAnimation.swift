
class CAAnimation : NSObject, NSCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValue(forKey key: String) -> AnyObject?
  func shouldArchiveValue(forKey key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var isRemovedOnCompletion: Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  @available(OSX 10.0, *)
  func run(forKey event: String, object anObject: AnyObject, arguments dict: [NSObject : AnyObject]?)
}
extension NSObject {
  class func animationDidStart(_ anim: CAAnimation)
  func animationDidStart(_ anim: CAAnimation)
  class func animationDidStop(_ anim: CAAnimation, finished flag: Bool)
  func animationDidStop(_ anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
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
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
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
}
