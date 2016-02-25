
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
  optional func physicsWorld(_ world: SCNPhysicsWorld, didBeginContact contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(_ world: SCNPhysicsWorld, didEndContact contact: SCNPhysicsContact)
}
@available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
