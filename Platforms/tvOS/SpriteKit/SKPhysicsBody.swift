
class SKPhysicsBody : NSObject, NSCopying, NSCoding {
  /*not inherited*/ init(circleOfRadius r: CGFloat)
  /*not inherited*/ init(circleOfRadius r: CGFloat, center: CGPoint)
  /*not inherited*/ init(rectangleOfSize s: CGSize)
  /*not inherited*/ init(rectangleOfSize s: CGSize, center: CGPoint)
  /*not inherited*/ init(polygonFromPath path: CGPath)
  /*not inherited*/ init(edgeFromPoint p1: CGPoint, toPoint p2: CGPoint)
  /*not inherited*/ init(edgeChainFromPath path: CGPath)
  /*not inherited*/ init(edgeLoopFromPath path: CGPath)
  /*not inherited*/ init(edgeLoopFromRect rect: CGRect)
  @available(tvOS 8.0, *)
  /*not inherited*/ init(texture: SKTexture, size: CGSize)
  @available(tvOS 8.0, *)
  /*not inherited*/ init(texture: SKTexture, alphaThreshold: Float, size: CGSize)
  /*not inherited*/ init(bodies: [SKPhysicsBody])
  var dynamic: Bool
  var usesPreciseCollisionDetection: Bool
  var allowsRotation: Bool
  @available(tvOS 8.0, *)
  var pinned: Bool
  var resting: Bool
  var friction: CGFloat
  @available(tvOS 8.0, *)
  var charge: CGFloat
  var restitution: CGFloat
  var linearDamping: CGFloat
  var angularDamping: CGFloat
  var density: CGFloat
  var mass: CGFloat
  var area: CGFloat { get }
  var affectedByGravity: Bool
  @available(tvOS 8.0, *)
  var fieldBitMask: UInt32
  var categoryBitMask: UInt32
  var collisionBitMask: UInt32
  var contactTestBitMask: UInt32
  var joints: [SKPhysicsJoint] { get }
  weak var node: @sil_weak SKNode? { get }
  var velocity: CGVector
  var angularVelocity: CGFloat
  func applyForce(force: CGVector)
  func applyForce(force: CGVector, atPoint point: CGPoint)
  func applyTorque(torque: CGFloat)
  func applyImpulse(impulse: CGVector)
  func applyImpulse(impulse: CGVector, atPoint point: CGPoint)
  func applyAngularImpulse(impulse: CGFloat)
  func allContactedBodies() -> [SKPhysicsBody]
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
