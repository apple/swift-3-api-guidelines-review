
@available(OSX 10.10, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  @available(OSX 10.11, *)
  func setObject(obj: AnyObject?, forKeyedSubscript key: NSCopying)
  init()
  @available(OSX 10.10, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.10, *)
  func removeAllAnimations()
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String)
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }
  @available(OSX 10.10, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
