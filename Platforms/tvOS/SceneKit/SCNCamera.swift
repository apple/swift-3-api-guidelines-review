
@available(tvOS 8.0, *)
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  var xFov: Double
  var yFov: Double
  var zNear: Double
  var zFar: Double
  @available(tvOS 8.0, *)
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  @available(tvOS 8.0, *)
  var orthographicScale: Double
  func projectionTransform() -> SCNMatrix4
  @available(tvOS 8.0, *)
  func setProjectionTransform(projectionTransform: SCNMatrix4)
  @available(tvOS 8.0, *)
  var focalDistance: CGFloat
  @available(tvOS 8.0, *)
  var focalSize: CGFloat
  @available(tvOS 8.0, *)
  var focalBlurRadius: CGFloat
  @available(tvOS 8.0, *)
  var aperture: CGFloat
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  init()
  @available(tvOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
