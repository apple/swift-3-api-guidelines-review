
@available(iOS 7.0, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
@available(iOS 8.0, *)
protocol SKSceneDelegate : NSObjectProtocol {
  optional func update(currentTime: NSTimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsForScene(scene: SKScene)
  optional func didSimulatePhysicsForScene(scene: SKScene)
  optional func didApplyConstraintsForScene(scene: SKScene)
  optional func didFinishUpdateForScene(scene: SKScene)
}
class SKScene : SKEffectNode {
  init(size: CGSize)
  var size: CGSize
  var scaleMode: SKSceneScaleMode
  @available(iOS 9.0, *)
  weak var camera: @sil_weak SKCameraNode?
  @available(iOS 9.0, *)
  weak var listener: @sil_weak SKNode?
  var backgroundColor: UIColor
  @available(iOS 8.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKSceneDelegate?
  var anchorPoint: CGPoint
  var physicsWorld: SKPhysicsWorld { get }
  func convertPointFromView(point: CGPoint) -> CGPoint
  func convertPointToView(point: CGPoint) -> CGPoint
  weak var view: @sil_weak SKView? { get }
  func update(currentTime: NSTimeInterval)
  func didEvaluateActions()
  func didSimulatePhysics()
  @available(iOS 8.0, *)
  func didApplyConstraints()
  @available(iOS 8.0, *)
  func didFinishUpdate()
  func didMoveToView(view: SKView)
  func willMoveFromView(view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
