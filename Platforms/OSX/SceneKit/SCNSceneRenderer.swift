
let SCNHitTestFirstFoundOnlyKey: String
let SCNHitTestSortResultsKey: String
let SCNHitTestClipToZRangeKey: String
let SCNHitTestBackFaceCullingKey: String
let SCNHitTestBoundingBoxOnlyKey: String
let SCNHitTestIgnoreChildNodesKey: String
let SCNHitTestRootNodeKey: String
@available(OSX 10.9, *)
let SCNHitTestIgnoreHiddenNodesKey: String
@available(OSX 10.11, *)
enum SCNRenderingAPI : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Metal
  case OpenGLLegacy
  case OpenGLCore32
  case OpenGLCore41
}
@available(OSX 10.11, *)
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
@available(OSX 10.8, *)
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
  @available(OSX 10.8, *)
  var scene: SCNScene? { get set }
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval { get set }
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate? { get set }
  @available(OSX 10.8, *)
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(OSX 10.9, *)
  func isNodeInsideFrustum(_ node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(OSX 10.11, *)
  func nodesInsideFrustumWithPointOfView(_ pointOfView: SCNNode) -> [SCNNode]
  @available(OSX 10.9, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(OSX 10.9, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  var playing: Bool { get set }
  var loops: Bool { get set }
  @available(OSX 10.8, *)
  var pointOfView: SCNNode? { get set }
  var autoenablesDefaultLighting: Bool { get set }
  var jitteringEnabled: Bool { get set }
  @available(OSX 10.9, *)
  func prepareObject(_ object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  @available(OSX 10.10, *)
  func prepareObjects(_ objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.9, *)
  var showsStatistics: Bool { get set }
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions { get set }
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(OSX 10.11, *)
  var device: MTLDevice? { get }
  @available(OSX 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(OSX 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(OSX 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(OSX 10.11, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(OSX 10.11, *)
  var audioListener: SCNNode? { get set }
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval { get set }
}
protocol SCNSceneRendererDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: NSTimeInterval)
  @available(OSX 10.10, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: NSTimeInterval)
  @available(OSX 10.10, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: NSTimeInterval)
  @available(OSX 10.8, *)
  optional func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: NSTimeInterval)
  @available(OSX 10.8, *)
  optional func renderer(_ renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: NSTimeInterval)
}
