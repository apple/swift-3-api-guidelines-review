
@available(OSX 10.9, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
@available(OSX 10.10, *)
protocol SKSceneDelegate : ObjectProtocol {
  optional func update(currentTime: TimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsFor(scene: SKScene)
  optional func didSimulatePhysicsFor(scene: SKScene)
  optional func didApplyConstraintsFor(scene: SKScene)
  optional func didFinishUpdateFor(scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
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
  func convertPointFromView(point: CGPoint) -> CGPoint
  func convertPointToView(point: CGPoint) -> CGPoint
  weak var view: @sil_weak SKView? { get }
  func update(currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(OSX 10.10, *)
  func didApplyConstraints()
  @available(OSX 10.10, *)
  func didFinishUpdate()
  func didMoveTo(view: SKView)
  func willMoveFrom(view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
