
@available(iOS 7.0, *)
enum SKBlendMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case multiplyX2
  case screen
  case replace
}
class SKNode : UIResponder, NSCopying, NSCoding {
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
  var isPaused: Bool
  var isHidden: Bool
  var isUserInteractionEnabled: Bool
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
  func insertChild(_ node: SKNode, at index: Int)
  func removeChildren(in nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func move(toParent parent: SKNode)
  func childNode(withName name: String) -> SKNode?
  func enumerateChildNodes(withName name: String, using block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript(_ name: String) -> [SKNode] { get }
  func inParentHierarchy(_ parent: SKNode) -> Bool
  func run(_ action: SKAction)
  func run(_ action: SKAction, completion block: () -> Void)
  func run(_ action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func action(forKey key: String) -> SKAction?
  func removeAction(forKey key: String)
  func removeAllActions()
  func contains(_ p: CGPoint) -> Bool
  func atPoint(_ p: CGPoint) -> SKNode
  func nodes(at p: CGPoint) -> [SKNode]
  func convert(_ point: CGPoint, from node: SKNode) -> CGPoint
  func convert(_ point: CGPoint, to node: SKNode) -> CGPoint
  func intersects(_ node: SKNode) -> Bool
  func isEqual(to node: SKNode) -> Bool
  class func obstacles(fromSpriteTextures sprites: [SKNode], accuracy accuracy: Float) -> [AnyObject]
  class func obstacles(fromNodeBounds nodes: [SKNode]) -> [AnyObject]
  class func obstacles(fromNodePhysicsBodies nodes: [SKNode]) -> [AnyObject]
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
}
extension UITouch {
  func location(in node: SKNode) -> CGPoint
  func previousLocation(in node: SKNode) -> CGPoint
}
