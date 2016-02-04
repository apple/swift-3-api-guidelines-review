
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(OSX 10.9, *)
class SCNAnimationEvent : Object {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
  init()
}
protocol SCNAnimatable : ObjectProtocol {
  func add(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationForKey(key: String)
  var animationKeys: [String] { get }
  func animationForKey(key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
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
