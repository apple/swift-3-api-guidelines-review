
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
  func presentScene(_ scene: SKScene?)
  func presentScene(_ scene: SKScene, transition transition: SKTransition)
  var scene: SKScene? { get }
  func textureFromNode(_ node: SKNode) -> SKTexture?
  func textureFromNode(_ node: SKNode, crop crop: CGRect) -> SKTexture?
  func convertPoint(_ point: CGPoint, toScene scene: SKScene) -> CGPoint
  func convertPoint(_ point: CGPoint, fromScene scene: SKScene) -> CGPoint
}
