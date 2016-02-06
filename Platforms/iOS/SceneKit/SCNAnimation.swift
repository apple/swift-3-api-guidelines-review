
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void
@available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
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
