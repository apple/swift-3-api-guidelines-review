
@available(OSX 10.10, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  subscript(_ key: AnyObject) -> AnyObject? { get }
  @available(OSX 10.11, *)
  func setObject(_ obj: AnyObject?, forKeyedSubscript key: NSCopying)
  @available(OSX 10.10, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.10, *)
  func removeAllAnimations()
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String)
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }
  @available(OSX 10.10, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func resumeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
