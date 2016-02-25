
@available(iOS 8.0, *)
enum SCNPhysicsBodyType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Static
  case Dynamic
  case Kinematic
}
@available(iOS 8.0, *)
struct SCNPhysicsCollisionCategory : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Default: SCNPhysicsCollisionCategory { get }
  static var Static: SCNPhysicsCollisionCategory { get }
  static var All: SCNPhysicsCollisionCategory { get }
}
@available(iOS 8.0, *)
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func staticBody() -> Self
  class func dynamicBody() -> Self
  class func kinematicBody() -> Self
  convenience init(type type: SCNPhysicsBodyType, shape shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(iOS 9.0, *)
  var momentOfInertia: SCNVector3
  @available(iOS 9.0, *)
  var usesDefaultMomentOfInertia: Bool
  var charge: CGFloat
  var friction: CGFloat
  var restitution: CGFloat
  var rollingFriction: CGFloat
  var physicsShape: SCNPhysicsShape?
  var isResting: Bool { get }
  var allowsResting: Bool
  var velocity: SCNVector3
  var angularVelocity: SCNVector4
  var damping: CGFloat
  var angularDamping: CGFloat
  var velocityFactor: SCNVector3
  var angularVelocityFactor: SCNVector3
  var categoryBitMask: Int
  var collisionBitMask: Int
  @available(iOS 9.0, *)
  var contactTestBitMask: Int
  @available(iOS 9.0, *)
  var affectedByGravity: Bool
  func applyForce(_ direction: SCNVector3, impulse impulse: Bool)
  func applyForce(_ direction: SCNVector3, atPosition position: SCNVector3, impulse impulse: Bool)
  func applyTorque(_ torque: SCNVector4, impulse impulse: Bool)
  func clearAllForces()
  func resetTransform()
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
