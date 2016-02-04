
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
@available(iOS 8.0, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(weight: CGFloat, forTargetAtIndex targetIndex: Int)
  func weightForTargetAtIndex(targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
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
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
