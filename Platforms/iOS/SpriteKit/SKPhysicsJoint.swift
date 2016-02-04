
class SKPhysicsJoint : NSObject, NSCoding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
  init()
  init?(coder aDecoder: NSCoder)
}
