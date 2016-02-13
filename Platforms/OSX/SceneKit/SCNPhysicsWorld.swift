
@available(OSX 10.10, *)
let SCNPhysicsTestCollisionBitMaskKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestBackfaceCullingKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeAny: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeClosest: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeAll: String
@available(OSX 10.10, *)
protocol SCNPhysicsContactDelegate : ObjectProtocol {
  optional func physicsWorld(world: SCNPhysicsWorld, didBegin contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didUpdate contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didEnd contact: SCNPhysicsContact)
}
@available(OSX 10.10, *)
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
  func contactTest(body: SCNPhysicsBody, options: [String : AnyObject]? = [:]) -> [SCNPhysicsContact]
  func convexSweepTest(shape: SCNPhysicsShape, from: SCNMatrix4, to: SCNMatrix4, options: [String : AnyObject]? = [:]) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
