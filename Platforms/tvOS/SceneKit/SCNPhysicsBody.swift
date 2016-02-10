
@available(tvOS 8.0, *)
enum SCNPhysicsBodyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `static`
  case dynamic
  case kinematic
}
@available(tvOS 8.0, *)
struct SCNPhysicsCollisionCategory : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var `default`: SCNPhysicsCollisionCategory { get }
  static var `static`: SCNPhysicsCollisionCategory { get }
  static var all: SCNPhysicsCollisionCategory { get }
}
@available(tvOS 8.0, *)
class SCNPhysicsBody : Object, Copying, SecureCoding {
  class func staticBody() -> Self
  class func dynamic() -> Self
  class func kinematic() -> Self
  convenience init(type: SCNPhysicsBodyType, shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(tvOS 9.0, *)
  var momentOfInertia: SCNVector3
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var contactTestBitMask: Int
  @available(tvOS 9.0, *)
  var isAffectedByGravity: Bool
  func applyForce(direction: SCNVector3, impulse: Bool)
  func applyForce(direction: SCNVector3, atPosition position: SCNVector3, impulse: Bool)
  func applyTorque(torque: SCNVector4, impulse: Bool)
  func clearAllForces()
  func resetTransform()
  init()
  @available(tvOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
