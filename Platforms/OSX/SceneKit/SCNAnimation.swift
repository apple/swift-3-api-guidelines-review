
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(OSX 10.9, *)
class SCNAnimationEvent : NSObject {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
}
protocol SCNAnimatable : NSObjectProtocol {
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(_ key: String)
  var animationKeys: [String] { get }
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
}
extension CAAnimation {
  var usesSceneTimeBase: Bool
  @available(OSX 10.9, *)
  var fadeInDuration: CGFloat
  @available(OSX 10.9, *)
  var fadeOutDuration: CGFloat
  @available(OSX 10.9, *)
  var animationEvents: [SCNAnimationEvent]?
}
