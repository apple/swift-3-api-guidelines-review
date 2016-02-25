
@available(iOS 8.0, *)
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  var xFov: Double
  var yFov: Double
  var zNear: Double
  var zFar: Double
  @available(iOS 8.0, *)
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  @available(iOS 8.0, *)
  var orthographicScale: Double
  func projectionTransform() -> SCNMatrix4
  @available(iOS 8.0, *)
  func setProjectionTransform(_ projectionTransform: SCNMatrix4)
  @available(iOS 8.0, *)
  var focalDistance: CGFloat
  @available(iOS 8.0, *)
  var focalSize: CGFloat
  @available(iOS 8.0, *)
  var focalBlurRadius: CGFloat
  @available(iOS 8.0, *)
  var aperture: CGFloat
  @available(iOS 8.0, *)
  var categoryBitMask: Int
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
  @NSCopying var technique: SCNTechnique?
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
