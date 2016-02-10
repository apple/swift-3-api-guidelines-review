
@available(iOS 7.0, *)
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case multiplyX2
  case screen
  case replace
}
class SKNode : UIResponder, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
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
  var isPaused: Bool
  var isHidden: Bool
  var isUserInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: MutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  func setScale(scale: CGFloat)
  func addChild(node: SKNode)
  func insertChild(node: SKNode, at index: Int)
  func removeChildrenIn(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveTo(parent parent: SKNode)
  func childNodeWith(name name: String) -> SKNode?
  func enumerateChildNodes(name name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript (keyedSubscript name: String) -> [SKNode] { get }
  func `in`(parentHierarchy parent: SKNode) -> Bool
  func run(action: SKAction)
  func run(action: SKAction, completion block: () -> Void)
  func run(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionFor(key key: String) -> SKAction?
  func removeActionFor(key key: String)
  func removeAllActions()
  func contains(p: CGPoint) -> Bool
  func at(p: CGPoint) -> SKNode
  func nodesAt(p: CGPoint) -> [SKNode]
  func convert(point: CGPoint, from node: SKNode) -> CGPoint
  func convert(point: CGPoint, to node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualTo(node: SKNode) -> Bool
  class func obstaclesFrom(spriteTextures sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFrom(nodeBounds nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFrom(nodePhysicsBodies nodes: [SKNode]) -> [AnyObject]
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension UITouch {
  func locationIn(node: SKNode) -> CGPoint
  func previousLocationIn(node: SKNode) -> CGPoint
}
