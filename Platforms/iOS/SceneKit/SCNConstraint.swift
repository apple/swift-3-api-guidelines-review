
@available(iOS 8.0, *)
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  @available(iOS 8.0, *)
  var influenceFactor: CGFloat
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
}
@available(iOS 8.0, *)
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
  static var All: SCNBillboardAxis { get }
}
@available(iOS 9.0, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
}
@available(iOS 8.0, *)
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, withBlock block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
}
@available(iOS 8.0, *)
class SCNIKConstraint : SCNConstraint {
  @available(iOS 9.0, *)
  init(chainRootNode chainRootNode: SCNNode)
  class func inverseKinematicsConstraintWithChainRootNode(_ chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(_ angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngleForJoint(_ node: SCNNode) -> CGFloat
}
