
@available(OSX 10.9, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case aspectFill
  case aspectFit
  case resizeFill
}
@available(OSX 10.10, *)
protocol SKSceneDelegate : ObjectProtocol {
  optional func update(currentTime: TimeInterval, forScene scene: SKScene)
  optional func didEvaluateActions(forScene scene: SKScene)
  optional func didSimulatePhysics(forScene scene: SKScene)
  optional func didApplyConstraints(forScene scene: SKScene)
  optional func didFinishUpdate(forScene scene: SKScene)
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
  func convertPoint(fromView point: CGPoint) -> CGPoint
  func convertPoint(toView point: CGPoint) -> CGPoint
  weak var view: @sil_weak SKView? { get }
  func update(currentTime: TimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(OSX 10.10, *)
  func didApplyConstraints()
  @available(OSX 10.10, *)
  func didFinishUpdate()
  func didMove(to view: SKView)
  func willMove(from view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
