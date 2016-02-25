
@available(iOS 8.0, *)
enum SCNAntialiasingMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case multisampling2X
  case multisampling4X
}
@available(iOS 9.0, *)
let SCNPreferredRenderingAPIKey: String
@available(iOS 9.0, *)
let SCNPreferredDeviceKey: String
@available(iOS 9.0, *)
let SCNPreferLowPowerDeviceKey: String
class SCNView : UIView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame frame: CGRect, options options: [String : AnyObject]? = [:])
  var scene: SCNScene?
  var allowsCameraControl: Bool
  @available(iOS 8.0, *)
  func snapshot() -> UIImage
  @IBAction func play(_ sender: AnyObject?)
  @IBAction func pause(_ sender: AnyObject?)
  @IBAction func stop(_ sender: AnyObject?)
  var preferredFramesPerSecond: Int
  var eaglContext: EAGLContext?
  @available(iOS 8.0, *)
  var antialiasingMode: SCNAntialiasingMode
  @available(iOS 8.0, *)
  var sceneTime: NSTimeInterval
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(iOS 8.0, *)
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(iOS 8.0, *)
  func isNode(insideFrustum node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(iOS 9.0, *)
  func nodesInsideFrustum(withPointOfView pointOfView: SCNNode) -> [SCNNode]
  @available(iOS 8.0, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(iOS 8.0, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  var isPlaying: Bool
  var loops: Bool
  @available(iOS 8.0, *)
  var pointOfView: SCNNode?
  var autoenablesDefaultLighting: Bool
  var isJitteringEnabled: Bool
  @available(iOS 8.0, *)
  func prepare(_ object: AnyObject, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  @available(iOS 8.0, *)
  func prepare(_ objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(iOS 8.0, *)
  var showsStatistics: Bool
  @available(iOS 9.0, *)
  var debugOptions: SCNDebugOptions
  @available(iOS 9.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  @available(iOS 9.0, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(iOS 9.0, *)
  var device: MTLDevice? { get }
  @available(iOS 9.0, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(iOS 9.0, *)
  var audioListener: SCNNode?
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
}
