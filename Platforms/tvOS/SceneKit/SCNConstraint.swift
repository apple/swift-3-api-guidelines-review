
@available(tvOS 8.0, *)
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  @available(tvOS 8.0, *)
  var influenceFactor: CGFloat
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
}
@available(tvOS 8.0, *)
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target target: SCNNode)
  var target: SCNNode { get }
  var gimbalLockEnabled: Bool
}
struct SCNBillboardAxis : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var all: SCNBillboardAxis { get }
}
@available(tvOS 9.0, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
}
@available(tvOS 8.0, *)
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, with block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
}
@available(tvOS 8.0, *)
class SCNIKConstraint : SCNConstraint {
  @available(tvOS 9.0, *)
  init(chainRootNode chainRootNode: SCNNode)
  class func inverseKinematicsConstraint(withChainRootNode chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(_ angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngle(forJoint node: SCNNode) -> CGFloat
}
