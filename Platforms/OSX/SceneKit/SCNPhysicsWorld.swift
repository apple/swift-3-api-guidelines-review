
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
protocol SCNPhysicsContactDelegate : NSObjectProtocol {
  optional func physicsWorld(_ world: SCNPhysicsWorld, didBeginContact contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didEndContact contact: SCNPhysicsContact)
}
@available(OSX 10.10, *)
class SCNPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: NSTimeInterval
  unowned(unsafe) var contactDelegate: @sil_unmanaged SCNPhysicsContactDelegate?
  func addBehavior(_ behavior: SCNPhysicsBehavior)
  func removeBehavior(_ behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegmentFromPoint(_ origin: SCNVector3, toPoint dest: SCNVector3, options options: [String : AnyObject]?) -> [SCNHitTestResult]
  func contactTestBetweenBody(_ bodyA: SCNPhysicsBody, andBody bodyB: SCNPhysicsBody, options options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func contactTestWithBody(_ body: SCNPhysicsBody, options options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func convexSweepTestWithShape(_ shape: SCNPhysicsShape, fromTransform from: SCNMatrix4, toTransform to: SCNMatrix4, options options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
