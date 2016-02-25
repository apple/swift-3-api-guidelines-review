
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
  func presentScene(_ scene: SKScene?)
  func presentScene(_ scene: SKScene, transition transition: SKTransition)
  var scene: SKScene? { get }
  func textureFromNode(_ node: SKNode) -> SKTexture?
  func textureFromNode(_ node: SKNode, crop crop: CGRect) -> SKTexture?
  func convertPoint(_ point: CGPoint, toScene scene: SKScene) -> CGPoint
  func convertPoint(_ point: CGPoint, fromScene scene: SKScene) -> CGPoint
}
