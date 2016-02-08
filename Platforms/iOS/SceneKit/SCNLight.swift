
let SCNLightTypeAmbient: String
let SCNLightTypeOmni: String
let SCNLightTypeDirectional: String
let SCNLightTypeSpot: String
@available(iOS 8.0, *)
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case deferred
  case modulated
}
@available(iOS 8.0, *)
class SCNLight : Object, SCNAnimatable, SCNTechniqueSupport, Copying, SecureCoding {
  var type: String
  var color: AnyObject
  var name: String?
  var castsShadow: Bool
  var shadowColor: AnyObject
  var shadowRadius: CGFloat
  @available(iOS 8.0, *)
  var shadowMapSize: CGSize
  @available(iOS 8.0, *)
  var shadowSampleCount: Int
  @available(iOS 8.0, *)
  var shadowMode: SCNShadowMode
  @available(iOS 8.0, *)
  var shadowBias: CGFloat
  @available(iOS 8.0, *)
  var orthographicScale: CGFloat
  @available(iOS 8.0, *)
  var zNear: CGFloat
  @available(iOS 8.0, *)
  var zFar: CGFloat
  @available(iOS 8.0, *)
  var attenuationStartDistance: CGFloat
  @available(iOS 8.0, *)
  var attenuationEndDistance: CGFloat
  @available(iOS 8.0, *)
  var attenuationFalloffExponent: CGFloat
  @available(iOS 8.0, *)
  var spotInnerAngle: CGFloat
  @available(iOS 8.0, *)
  var spotOuterAngle: CGFloat
  @available(iOS 8.0, *)
  var gobo: SCNMaterialProperty? { get }
  @available(iOS 8.0, *)
  var categoryBitMask: Int
  init()
  @available(iOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
