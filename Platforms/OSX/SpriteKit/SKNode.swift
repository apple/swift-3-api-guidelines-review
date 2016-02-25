
@available(OSX 10.9, *)
enum SKBlendMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case MultiplyX2
  case Screen
  case Replace
}
class SKNode : NSResponder, NSCopying, NSCoding {
  convenience init?(fileNamed filename: String)
  var frame: CGRect { get }
  func calculateAccumulatedFrame() -> CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var zRotation: CGFloat
  var xScale: CGFloat
  var yScale: CGFloat
  var speed: CGFloat
  var alpha: CGFloat
  var paused: Bool
  var hidden: Bool
  var userInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: NSMutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  func setScale(_ scale: CGFloat)
  func addChild(_ node: SKNode)
  func insertChild(_ node: SKNode, atIndex index: Int)
  func removeChildrenInArray(_ nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(_ parent: SKNode)
  func childNodeWithName(_ name: String) -> SKNode?
  func enumerateChildNodesWithName(_ name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.10, *)
  subscript(_ name: String) -> [SKNode] { get }
  func inParentHierarchy(_ parent: SKNode) -> Bool
  func runAction(_ action: SKAction)
  func runAction(_ action: SKAction, completion block: () -> Void)
  func runAction(_ action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(_ key: String) -> SKAction?
  func removeActionForKey(_ key: String)
  func removeAllActions()
  func containsPoint(_ p: CGPoint) -> Bool
  func nodeAtPoint(_ p: CGPoint) -> SKNode
  func nodesAtPoint(_ p: CGPoint) -> [SKNode]
  func convertPoint(_ point: CGPoint, fromNode node: SKNode) -> CGPoint
  func convertPoint(_ point: CGPoint, toNode node: SKNode) -> CGPoint
  func intersectsNode(_ node: SKNode) -> Bool
  func isEqualToNode(_ node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(_ sprites: [SKNode], accuracy accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(_ nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(_ nodes: [SKNode]) -> [AnyObject]
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension NSEvent {
  func locationInNode(_ node: SKNode) -> CGPoint
}
