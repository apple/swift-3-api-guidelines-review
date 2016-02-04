
@available(iOS 8.0, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  @available(iOS 9.0, *)
  func setObject(obj: AnyObject?, forKeyedSubscript key: NSCopying)
  init()
  @available(iOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
