
enum SCNMorpherCalculationMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case normalized
  case additive
}
@available(iOS 8.0, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  func setWeight(_ weight: CGFloat, forTargetAt targetIndex: Int)
  func weightForTarget(at targetIndex: Int) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
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
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
