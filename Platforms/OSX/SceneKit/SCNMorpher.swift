
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
@available(OSX 10.9, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(weight: CGFloat, forTargetAtIndex targetIndex: Int)
  func weightForTargetAtIndex(targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  init()
  @available(OSX 10.9, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.9, *)
  func removeAllAnimations()
  @available(OSX 10.9, *)
  func removeAnimationForKey(key: String)
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }
  @available(OSX 10.9, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
