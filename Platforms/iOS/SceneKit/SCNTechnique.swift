
@available(iOS 8.0, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary dictionary: [String : AnyObject])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  subscript(_ key: AnyObject) -> AnyObject? { get }
  @available(iOS 9.0, *)
  func setObject(_ obj: AnyObject?, forKeyedSubscript key: NSCopying)
  @available(iOS 8.0, *)
  func add(_ animation: CAAnimation, forKey key: String?)
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
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
