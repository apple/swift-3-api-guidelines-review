
@available(OSX 10.10, *)
enum SCNPhysicsBodyType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Static
  case Dynamic
  case Kinematic
}
@available(OSX 10.10, *)
struct SCNPhysicsCollisionCategory : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Default: SCNPhysicsCollisionCategory { get }
  static var Static: SCNPhysicsCollisionCategory { get }
  static var All: SCNPhysicsCollisionCategory { get }
}
@available(OSX 10.10, *)
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func staticBody() -> Self
  class func dynamicBody() -> Self
  class func kinematicBody() -> Self
  convenience init(type type: SCNPhysicsBodyType, shape shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(OSX 10.11, *)
  var momentOfInertia: SCNVector3
  @available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  var contactTestBitMask: Int
  @available(OSX 10.11, *)
  var affectedByGravity: Bool
  func applyForce(_ direction: SCNVector3, impulse impulse: Bool)
  func applyForce(_ direction: SCNVector3, atPosition position: SCNVector3, impulse impulse: Bool)
  func applyTorque(_ torque: SCNVector4, impulse impulse: Bool)
  func clearAllForces()
  func resetTransform()
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
