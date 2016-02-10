
@available(iOS 8.0, *)
class SCNTechnique : Object, SCNAnimatable, Copying, SecureCoding {
  /*not inherited*/ init?(dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBinding(ofSymbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  subscript (forKeyedSubscript key: AnyObject) -> AnyObject? { get }
  @available(iOS 9.0, *)
  func setObject(obj: AnyObject?, forKeyedSubscript key: Copying)
  init()
  @available(iOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(iOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(iOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SCNTechniqueSupport : ObjectProtocol {
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
