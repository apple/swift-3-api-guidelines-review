
@available(tvOS 8.0, *)
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context: EAGLContext, options: [NSObject : AnyObject]?)
  @available(tvOS 9.0, *)
  convenience init(device: MTLDevice?, options: [NSObject : AnyObject]?)
  var scene: SCNScene?
  @available(tvOS 8.0, *)
  func renderAtTime(time: CFTimeInterval)
  @available(tvOS 9.0, *)
  func renderAtTime(time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  @available(tvOS 8.0, *)
  var nextFrameTime: CFTimeInterval { get }
  @available(tvOS, introduced=8.0, deprecated=9.0)
  func render()
  init()
  @available(tvOS 8.0, *)
  var sceneTime: NSTimeInterval
  @available(tvOS 8.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(tvOS 8.0, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(tvOS 8.0, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(tvOS 9.0, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]
  @available(tvOS 8.0, *)
  func projectPoint(point: SCNVector3) -> SCNVector3
  @available(tvOS 8.0, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  @available(tvOS 8.0, *)
  var playing: Bool
  @available(tvOS 8.0, *)
  var loops: Bool
  @available(tvOS 8.0, *)
  var pointOfView: SCNNode?
  @available(tvOS 8.0, *)
  var autoenablesDefaultLighting: Bool
  @available(tvOS 8.0, *)
  var jitteringEnabled: Bool
  @available(tvOS 8.0, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  @available(tvOS 8.0, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  @available(tvOS 8.0, *)
  var showsStatistics: Bool
  @available(tvOS 9.0, *)
  var debugOptions: SCNDebugOptions
  @available(tvOS 9.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  @available(tvOS 8.0, *)
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
  var audioListener: SCNNode?
  @available(tvOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
}
