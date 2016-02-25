
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(iOS 8.0, *)
class SCNAnimationEvent : NSObject {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
}
protocol SCNAnimatable : NSObjectProtocol {
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(_ key: String)
  var animationKeys: [String] { get }
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
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
