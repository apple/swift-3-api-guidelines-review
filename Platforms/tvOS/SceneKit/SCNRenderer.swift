
@available(tvOS 8.0, *)
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context context: EAGLContext, options options: [NSObject : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  convenience init(device device: MTLDevice?, options options: [NSObject : AnyObject]? = [:])
  var scene: SCNScene?
  @available(tvOS 8.0, *)
  func render(atTime time: CFTimeInterval)
  @available(tvOS 9.0, *)
  func render(atTime time: CFTimeInterval, viewport viewport: CGRect, commandBuffer commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  @available(tvOS 8.0, *)
  var nextFrameTime: CFTimeInterval { get }
  @available(tvOS, introduced=8.0, deprecated=9.0)
  func render()
  @available(tvOS 8.0, *)
  var sceneTime: NSTimeInterval
  @available(tvOS 8.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(tvOS 8.0, *)
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(tvOS 8.0, *)
  func isNode(insideFrustum node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(tvOS 9.0, *)
  func nodesInsideFrustum(withPointOfView pointOfView: SCNNode) -> [SCNNode]
  @available(tvOS 8.0, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(tvOS 8.0, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  @available(tvOS 8.0, *)
  var isPlaying: Bool
  @available(tvOS 8.0, *)
  var loops: Bool
  @available(tvOS 8.0, *)
  var pointOfView: SCNNode?
  @available(tvOS 8.0, *)
  var autoenablesDefaultLighting: Bool
  @available(tvOS 8.0, *)
  var isJitteringEnabled: Bool
  @available(tvOS 8.0, *)
  func prepare(_ object: AnyObject, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  @available(tvOS 8.0, *)
  func prepare(_ objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)? = nil)
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
