
class SKView : NSView {
  var isPaused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(OSX 10.10, *)
  var showsQuadCount: Bool
  @available(OSX 10.10, *)
  var showsPhysics: Bool
  @available(OSX 10.10, *)
  var showsFields: Bool
  var isAsynchronous: Bool
  @available(OSX 10.10, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(OSX 10.10, *)
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func texture(from node: SKNode) -> SKTexture?
  func texture(from node: SKNode, crop: CGRect) -> SKTexture?
  func convert(point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(point: CGPoint, from scene: SKScene) -> CGPoint
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
