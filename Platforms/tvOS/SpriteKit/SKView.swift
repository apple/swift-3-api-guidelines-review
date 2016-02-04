
class SKView : UIView {
  var paused: Bool
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(tvOS 8.0, *)
  var showsQuadCount: Bool
  @available(tvOS 8.0, *)
  var showsPhysics: Bool
  @available(tvOS 8.0, *)
  var showsFields: Bool
  var asynchronous: Bool
  @available(tvOS 8.0, *)
  var allowsTransparency: Bool
  var ignoresSiblingOrder: Bool
  @available(tvOS 8.0, *)
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int
  func presentScene(scene: SKScene?)
  func presentScene(scene: SKScene, transition: SKTransition)
  var scene: SKScene? { get }
  func textureFromNode(node: SKNode) -> SKTexture?
  func textureFromNode(node: SKNode, crop: CGRect) -> SKTexture?
  func convertPoint(point: CGPoint, toScene scene: SKScene) -> CGPoint
  func convertPoint(point: CGPoint, fromScene scene: SKScene) -> CGPoint
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
