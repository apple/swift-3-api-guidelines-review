
class SKView : NSView {
  var paused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(OSX 10.10, *)
  var showsQuadCount: Bool
  @available(OSX 10.10, *)
  var showsPhysics: Bool
  @available(OSX 10.10, *)
  var showsFields: Bool
  var asynchronous: Bool
  @available(OSX 10.10, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(OSX 10.10, *)
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func textureFromNode(node: SKNode) -> SKTexture?
  func textureFromNode(node: SKNode, crop: CGRect) -> SKTexture?
  func convertPoint(point: CGPoint, toScene scene: SKScene) -> CGPoint
  func convertPoint(point: CGPoint, fromScene scene: SKScene) -> CGPoint
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
