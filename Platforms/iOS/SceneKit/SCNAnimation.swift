
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(iOS 8.0, *)
class SCNAnimationEvent : NSObject {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
  init()
}
protocol SCNAnimatable : NSObjectProtocol {
  func addAnimation(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension CAAnimation {
  var usesSceneTimeBase: Bool
  @available(iOS 8.0, *)
  var fadeInDuration: CGFloat
  @available(iOS 8.0, *)
  var fadeOutDuration: CGFloat
  @available(iOS 8.0, *)
  var animationEvents: [SCNAnimationEvent]?
}
