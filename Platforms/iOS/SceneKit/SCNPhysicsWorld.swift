
@available(iOS 8.0, *)
let SCNPhysicsTestCollisionBitMaskKey: String
@available(iOS 8.0, *)
let SCNPhysicsTestSearchModeKey: String
@available(iOS 8.0, *)
let SCNPhysicsTestBackfaceCullingKey: String
@available(iOS 8.0, *)
let SCNPhysicsTestSearchModeAny: String
@available(iOS 8.0, *)
let SCNPhysicsTestSearchModeClosest: String
@available(iOS 8.0, *)
let SCNPhysicsTestSearchModeAll: String
@available(iOS 8.0, *)
protocol SCNPhysicsContactDelegate : NSObjectProtocol {
  optional func physicsWorld(world: SCNPhysicsWorld, didBeginContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didEndContact contact: SCNPhysicsContact)
}
@available(iOS 8.0, *)
class SCNPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: NSTimeInterval
  unowned(unsafe) var contactDelegate: @sil_unmanaged SCNPhysicsContactDelegate?
  func addBehavior(behavior: SCNPhysicsBehavior)
  func removeBehavior(behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegmentFromPoint(origin: SCNVector3, toPoint dest: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func contactTestBetweenBody(bodyA: SCNPhysicsBody, andBody bodyB: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func contactTestWithBody(body: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func convexSweepTestWithShape(shape: SCNPhysicsShape, fromTransform from: SCNMatrix4, toTransform to: SCNMatrix4, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
