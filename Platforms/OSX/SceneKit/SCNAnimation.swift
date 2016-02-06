
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(OSX 10.9, *)
class SCNAnimationEvent : Object {
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
  init()
}
protocol SCNAnimatable : ObjectProtocol {
  func add(animation: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimationFor(key key: String)
  var animationKeys: [String] { get }
  func animationFor(key key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func resumeAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
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
