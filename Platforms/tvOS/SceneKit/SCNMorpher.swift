
enum SCNMorpherCalculationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
@available(tvOS 8.0, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(_ weight: CGFloat, forTargetAtIndex targetIndex: Int)
  func weightForTargetAtIndex(_ targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  @available(tvOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
