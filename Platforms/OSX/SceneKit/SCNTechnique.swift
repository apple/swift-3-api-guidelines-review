
@available(OSX 10.10, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  subscript(_ key: AnyObject) -> AnyObject? { get }
  @available(OSX 10.11, *)
  func setObject(_ obj: AnyObject?, forKeyedSubscript key: NSCopying)
  @available(OSX 10.10, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.10, *)
  func removeAllAnimations()
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String)
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }
  @available(OSX 10.10, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
