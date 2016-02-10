
class SKPhysicsJoint : Object, Coding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
  init()
  init?(coder aDecoder: Coder)
}
