
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
@available(OSX 10.10, *)
enum SCNShadowMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}
@available(OSX 10.8, *)
class SCNLight : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  @available(OSX 10.10, *)
  var shadowMapSize: CGSize
  @available(OSX 10.10, *)
  var shadowSampleCount: Int
  @available(OSX 10.10, *)
  var shadowMode: SCNShadowMode
  @available(OSX 10.10, *)
  var shadowBias: CGFloat
  @available(OSX 10.10, *)
  var orthographicScale: CGFloat
  @available(OSX 10.10, *)
  var zNear: CGFloat
  @available(OSX 10.10, *)
  var zFar: CGFloat
  @available(OSX 10.10, *)
  var attenuationStartDistance: CGFloat
  @available(OSX 10.10, *)
  var attenuationEndDistance: CGFloat
  @available(OSX 10.10, *)
  var attenuationFalloffExponent: CGFloat
  @available(OSX 10.10, *)
  var spotInnerAngle: CGFloat
  @available(OSX 10.10, *)
  var spotOuterAngle: CGFloat
  @available(OSX 10.9, *)
  var gobo: SCNMaterialProperty? { get }
  @available(OSX 10.10, *)
  var categoryBitMask: Int
  @available(OSX, introduced=10.8, deprecated=10.10)
  func attributeForKey(_ key: String) -> AnyObject?
  @available(OSX, introduced=10.8, deprecated=10.10)
  func setAttribute(_ attribute: AnyObject?, forKey key: String)
  @available(OSX 10.8, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimationForKey(_ key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
  @available(OSX 10.8, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationStartKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationEndKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationFalloffExponentKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightSpotInnerAngleKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightSpotOuterAngleKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightShadowNearClippingKey: String
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightShadowFarClippingKey: String
