
@available(tvOS 8.0, *)
class SCNCamera : Object, SCNAnimatable, SCNTechniqueSupport, Copying, SecureCoding {
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
  func add(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
