
@available(iOS 7.0, *)
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case MultiplyX2
  case Screen
  case Replace
}
class SKNode : UIResponder, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
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
  func setScale(scale: CGFloat)
  func addChild(node: SKNode)
  func insertChild(node: SKNode, atIndex index: Int)
  func removeChildrenInArray(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(parent: SKNode)
  func childNodeWithName(name: String) -> SKNode?
  func enumerateChildNodesWithName(name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript (name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func runAction(action: SKAction)
  func runAction(action: SKAction, completion block: () -> Void)
  func runAction(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(key: String) -> SKAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  func containsPoint(p: CGPoint) -> Bool
  func nodeAtPoint(p: CGPoint) -> SKNode
  func nodesAtPoint(p: CGPoint) -> [SKNode]
  func convertPoint(point: CGPoint, fromNode node: SKNode) -> CGPoint
  func convertPoint(point: CGPoint, toNode node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualToNode(node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(nodes: [SKNode]) -> [AnyObject]
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension UITouch {
  func locationInNode(node: SKNode) -> CGPoint
  func previousLocationInNode(node: SKNode) -> CGPoint
}
