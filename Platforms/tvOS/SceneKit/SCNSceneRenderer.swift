
let SCNHitTestFirstFoundOnlyKey: String
let SCNHitTestSortResultsKey: String
let SCNHitTestClipToZRangeKey: String
let SCNHitTestBackFaceCullingKey: String
let SCNHitTestBoundingBoxOnlyKey: String
let SCNHitTestIgnoreChildNodesKey: String
let SCNHitTestRootNodeKey: String
@available(tvOS 8.0, *)
let SCNHitTestIgnoreHiddenNodesKey: String
@available(tvOS 9.0, *)
enum SCNRenderingAPI : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Metal
  case OpenGLES2
}
@available(tvOS 9.0, *)
struct SCNDebugOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: SCNDebugOptions { get }
  static var ShowPhysicsShapes: SCNDebugOptions { get }
  static var ShowBoundingBoxes: SCNDebugOptions { get }
  static var ShowLightInfluences: SCNDebugOptions { get }
  static var ShowLightExtents: SCNDebugOptions { get }
  static var ShowPhysicsFields: SCNDebugOptions { get }
  static var ShowWireframe: SCNDebugOptions { get }
}
@available(tvOS 8.0, *)
class SCNHitTestResult : NSObject {
  var node: SCNNode { get }
  var geometryIndex: Int { get }
  var faceIndex: Int { get }
  var localCoordinates: SCNVector3 { get }
  var worldCoordinates: SCNVector3 { get }
  var localNormal: SCNVector3 { get }
  var worldNormal: SCNVector3 { get }
  var modelTransform: SCNMatrix4 { get }
  func textureCoordinatesWithMappingChannel(_ channel: Int) -> CGPoint
}
protocol SCNSceneRenderer : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var scene: SCNScene? { get set }
  @available(tvOS 8.0, *)
  var sceneTime: NSTimeInterval { get set }
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate? { get set }
  @available(tvOS 8.0, *)
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(tvOS 8.0, *)
  func isNodeInsideFrustum(_ node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(tvOS 9.0, *)
  func nodesInsideFrustumWithPointOfView(_ pointOfView: SCNNode) -> [SCNNode]
  @available(tvOS 8.0, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(tvOS 8.0, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  var playing: Bool { get set }
  var loops: Bool { get set }
  @available(tvOS 8.0, *)
  var pointOfView: SCNNode? { get set }
  var autoenablesDefaultLighting: Bool { get set }
  var jitteringEnabled: Bool { get set }
  @available(tvOS 8.0, *)
  func prepareObject(_ object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  @available(tvOS 8.0, *)
  func prepareObjects(_ objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  @available(tvOS 8.0, *)
  var showsStatistics: Bool { get set }
  @available(tvOS 9.0, *)
  var debugOptions: SCNDebugOptions { get set }
  @available(tvOS 9.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  @available(tvOS 9.0, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(tvOS 9.0, *)
  var device: MTLDevice? { get }
  @available(tvOS 9.0, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(tvOS 9.0, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(tvOS 9.0, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(tvOS 9.0, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(tvOS 9.0, *)
  var audioListener: SCNNode? { get set }
}
protocol SCNSceneRendererDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: NSTimeInterval)
  @available(tvOS 8.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: NSTimeInterval)
  @available(tvOS 8.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: NSTimeInterval)
  @available(tvOS 8.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: NSTimeInterval)
  @available(tvOS 8.0, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: NSTimeInterval)
}
