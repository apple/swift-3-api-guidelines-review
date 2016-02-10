
@available(tvOS 8.0, *)
let SCNPhysicsTestCollisionBitMaskKey: String
@available(tvOS 8.0, *)
let SCNPhysicsTestSearchModeKey: String
@available(tvOS 8.0, *)
let SCNPhysicsTestBackfaceCullingKey: String
@available(tvOS 8.0, *)
let SCNPhysicsTestSearchModeAny: String
@available(tvOS 8.0, *)
let SCNPhysicsTestSearchModeClosest: String
@available(tvOS 8.0, *)
let SCNPhysicsTestSearchModeAll: String
@available(tvOS 8.0, *)
protocol SCNPhysicsContactDelegate : ObjectProtocol {
  optional func physicsWorld(world: SCNPhysicsWorld, didBegin contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didEnd contact: SCNPhysicsContact)
}
@available(tvOS 8.0, *)
class SCNPhysicsWorld : Object, SecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: TimeInterval
  unowned(unsafe) var contactDelegate: @sil_unmanaged SCNPhysicsContactDelegate?
  func add(behavior: SCNPhysicsBehavior)
  func remove(behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegment(fromPoint origin: SCNVector3, toPoint dest: SCNVector3, options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  func contactTestBetweenBody(bodyA: SCNPhysicsBody, andBody bodyB: SCNPhysicsBody, options: [String : AnyObject]? = [:]) -> [SCNPhysicsContact]
  func contactTest(withBody body: SCNPhysicsBody, options: [String : AnyObject]? = [:]) -> [SCNPhysicsContact]
  func convexSweepTest(withShape shape: SCNPhysicsShape, fromTransform from: SCNMatrix4, toTransform to: SCNMatrix4, options: [String : AnyObject]? = [:]) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
