
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
@available(tvOS 8.0, *)
enum SCNShadowMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}
@available(tvOS 8.0, *)
class SCNLight : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  @available(tvOS 8.0, *)
  var shadowMapSize: CGSize
  @available(tvOS 8.0, *)
  var shadowSampleCount: Int
  @available(tvOS 8.0, *)
  var shadowMode: SCNShadowMode
  @available(tvOS 8.0, *)
  var shadowBias: CGFloat
  @available(tvOS 8.0, *)
  var orthographicScale: CGFloat
  @available(tvOS 8.0, *)
  var zNear: CGFloat
  @available(tvOS 8.0, *)
  var zFar: CGFloat
  @available(tvOS 8.0, *)
  var attenuationStartDistance: CGFloat
  @available(tvOS 8.0, *)
  var attenuationEndDistance: CGFloat
  @available(tvOS 8.0, *)
  var attenuationFalloffExponent: CGFloat
  @available(tvOS 8.0, *)
  var spotInnerAngle: CGFloat
  @available(tvOS 8.0, *)
  var spotOuterAngle: CGFloat
  @available(tvOS 8.0, *)
  var gobo: SCNMaterialProperty? { get }
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
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
  @NSCopying var technique: SCNTechnique?
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
