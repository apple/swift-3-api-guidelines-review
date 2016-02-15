
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
  func removeChildren(in nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func move(toParent parent: SKNode)
  func childNode(withName name: String) -> SKNode?
  func enumerateChildNodes(name name: String, using block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript(name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func run(action: SKAction)
  func run(action: SKAction, completion block: () -> Void)
  func run(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func action(forKey key: String) -> SKAction?
  func removeAction(forKey key: String)
  func removeAllActions()
  func contains(p: CGPoint) -> Bool
  func atPoint(p: CGPoint) -> SKNode
  func nodes(at p: CGPoint) -> [SKNode]
  func convert(point: CGPoint, from node: SKNode) -> CGPoint
  func convert(point: CGPoint, to node: SKNode) -> CGPoint
  func intersects(node: SKNode) -> Bool
  func isEqual(to node: SKNode) -> Bool
  class func obstacles(fromSpriteTextures sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstacles(fromNodeBounds nodes: [SKNode]) -> [AnyObject]
  class func obstacles(fromNodePhysicsBodies nodes: [SKNode]) -> [AnyObject]
  func copy(with zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
}
extension UITouch {
  func location(in node: SKNode) -> CGPoint
  func previousLocation(in node: SKNode) -> CGPoint
}
