
@available(OSX 10.9, *)
enum SKSceneScaleMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
@available(OSX 10.10, *)
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(_ currentTime: NSTimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsForScene(_ scene: SKScene)
  optional func didSimulatePhysicsForScene(_ scene: SKScene)
  optional func didApplyConstraintsForScene(_ scene: SKScene)
  optional func didFinishUpdateForScene(_ scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size size: CGSize)
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  @available(OSX 10.11, *)
  weak var camera: @sil_weak SKCameraNode?
  @available(OSX 10.11, *)
  weak var listener: @sil_weak SKNode?
  var backgroundColor: NSColor
  @available(OSX 10.10, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  func convertPointFromView(_ point: CGPoint) -> CGPoint
  func convertPointToView(_ point: CGPoint) -> CGPoint
  weak var view: @sil_weak SKView? { get }
  func update(_ currentTime: NSTimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(OSX 10.10, *)
  func didApplyConstraints()
  @available(OSX 10.10, *)
  func didFinishUpdate()
  func didMoveToView(_ view: SKView)
  func willMoveFromView(_ view: SKView)
  func didChangeSize(_ oldSize: CGSize)
}
