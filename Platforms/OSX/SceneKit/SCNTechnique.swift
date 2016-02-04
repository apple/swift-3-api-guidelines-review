
@available(OSX 10.10, *)
class SCNTechnique : Object, SCNAnimatable, Copying, SecureCoding {
  /*not inherited*/ init?(dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  @available(OSX 10.11, *)
  func setObject(obj: AnyObject?, forKeyedSubscript key: Copying)
  init()
  @available(OSX 10.10, *)
  func add(animation: CAAnimation, forKey key: String?)
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
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SCNTechniqueSupport : ObjectProtocol {
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
