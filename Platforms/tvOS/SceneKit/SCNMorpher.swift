
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normalized
  case additive
}
@available(tvOS 8.0, *)
class SCNMorpher : Object, SCNAnimatable, SecureCoding {
  var targets: [SCNGeometry]
  func setWeight(weight: CGFloat, forTargetAt targetIndex: Int)
  func weightForTarget(at targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  init()
  @available(tvOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
