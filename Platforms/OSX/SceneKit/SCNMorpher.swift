
enum SCNMorpherCalculationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
@available(OSX 10.9, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(_ weight: CGFloat, forTargetAtIndex targetIndex: Int)
  func weightForTargetAtIndex(_ targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  @available(OSX 10.9, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.9, *)
  func removeAllAnimations()
  @available(OSX 10.9, *)
  func removeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }
  @available(OSX 10.9, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
