
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(tvOS 8.0, *)
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
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension CAAnimation {
  var usesSceneTimeBase: Bool
  @available(tvOS 8.0, *)
  var fadeInDuration: CGFloat
  @available(tvOS 8.0, *)
  var fadeOutDuration: CGFloat
  @available(tvOS 8.0, *)
  var animationEvents: [SCNAnimationEvent]?
}
