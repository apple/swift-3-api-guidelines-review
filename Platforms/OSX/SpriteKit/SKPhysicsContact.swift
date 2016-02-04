
class SKPhysicsContact : Object {
  var bodyA: SKPhysicsBody { get }
  var bodyB: SKPhysicsBody { get }
  var contactPoint: CGPoint { get }
  var contactNormal: CGVector { get }
  var collisionImpulse: CGFloat { get }
  init()
}
