
class SKView : UIView {
  var isPaused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(iOS 8.0, *)
  var showsQuadCount: Bool
  @available(iOS 8.0, *)
  var showsPhysics: Bool
  @available(iOS 8.0, *)
  var showsFields: Bool
  var isAsynchronous: Bool
  @available(iOS 8.0, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(iOS 8.0, *)
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func textureFrom(node: SKNode) -> SKTexture?
  func textureFrom(node: SKNode, crop: CGRect) -> SKTexture?
  func convert(point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(point: CGPoint, from scene: SKScene) -> CGPoint
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
