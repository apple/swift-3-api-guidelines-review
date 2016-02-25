
enum SCNMorpherCalculationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case normalized
  case additive
}
@available(OSX 10.9, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(_ weight: CGFloat, forTargetAt targetIndex: Int)
  func weightForTarget(at targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  @available(OSX 10.9, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.9, *)
  func removeAllAnimations()
  @available(OSX 10.9, *)
  func removeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }
  @available(OSX 10.9, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func resumeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
