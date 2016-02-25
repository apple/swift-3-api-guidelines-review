
@available(OSX 10.8, *)
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  var xFov: Double
  var yFov: Double
  var zNear: Double
  var zFar: Double
  @available(OSX 10.9, *)
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  @available(OSX 10.9, *)
  var orthographicScale: Double
  func projectionTransform() -> SCNMatrix4
  @available(OSX 10.9, *)
  func setProjectionTransform(_ projectionTransform: SCNMatrix4)
  @available(OSX 10.9, *)
  var focalDistance: CGFloat
  @available(OSX 10.9, *)
  var focalSize: CGFloat
  @available(OSX 10.9, *)
  var focalBlurRadius: CGFloat
  @available(OSX 10.9, *)
  var aperture: CGFloat
  @available(OSX 10.10, *)
  var categoryBitMask: Int
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
