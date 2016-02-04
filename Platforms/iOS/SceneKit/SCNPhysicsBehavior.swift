
@available(iOS 8.0, *)
class SCNPhysicsBehavior : NSObject, NSSecureCoding {
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNPhysicsHingeJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNPhysicsBallSocketJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, anchorA: SCNVector3, bodyB: SCNPhysicsBody, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNPhysicsSliderJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  var minimumLinearLimit: CGFloat
  var maximumLinearLimit: CGFloat
  var minimumAngularLimit: CGFloat
  var maximumAngularLimit: CGFloat
  var motorTargetLinearVelocity: CGFloat
  var motorMaximumForce: CGFloat
  var motorTargetAngularVelocity: CGFloat
  var motorMaximumTorque: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNPhysicsVehicleWheel : NSObject, NSCopying, NSSecureCoding {
  convenience init(node: SCNNode)
  var node: SCNNode { get }
  var suspensionStiffness: CGFloat
  var suspensionCompression: CGFloat
  var suspensionDamping: CGFloat
  var maximumSuspensionTravel: CGFloat
  var frictionSlip: CGFloat
  var maximumSuspensionForce: CGFloat
  var connectionPosition: SCNVector3
  var steeringAxis: SCNVector3
  var axle: SCNVector3
  var radius: CGFloat
  var suspensionRestLength: CGFloat
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class SCNPhysicsVehicle : SCNPhysicsBehavior {
  convenience init(chassisBody: SCNPhysicsBody, wheels: [SCNPhysicsVehicleWheel])
  var speedInKilometersPerHour: CGFloat { get }
  var wheels: [SCNPhysicsVehicleWheel] { get }
  var chassisBody: SCNPhysicsBody { get }
  func applyEngineForce(value: CGFloat, forWheelAtIndex index: Int)
  func setSteeringAngle(value: CGFloat, forWheelAtIndex index: Int)
  func applyBrakingForce(value: CGFloat, forWheelAtIndex index: Int)
  init()
  init?(coder aDecoder: NSCoder)
}
