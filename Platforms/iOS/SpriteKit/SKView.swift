
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
  func presentScene(_ scene: SKScene?)
  func presentScene(_ scene: SKScene, transition transition: SKTransition)
  var scene: SKScene? { get }
  func texture(from node: SKNode) -> SKTexture?
  func texture(from node: SKNode, crop crop: CGRect) -> SKTexture?
  func convert(_ point: CGPoint, to scene: SKScene) -> CGPoint
  func convert(_ point: CGPoint, from scene: SKScene) -> CGPoint
}
