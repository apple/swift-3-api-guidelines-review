
@available(OSX 10.10, *)
enum SCNAntialiasingMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case multisampling2X
  case multisampling4X
  case multisampling8X
  case multisampling16X
}
@available(OSX 10.11, *)
let SCNPreferredRenderingAPIKey: String
@available(OSX 10.11, *)
let SCNPreferredDeviceKey: String
@available(OSX 10.11, *)
let SCNPreferLowPowerDeviceKey: String
@available(OSX 10.8, *)
class SCNView : NSView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame frame: NSRect, options options: [String : AnyObject]? = [:])
  var scene: SCNScene?
  @NSCopying var backgroundColor: NSColor
  var allowsCameraControl: Bool
  @available(OSX 10.10, *)
  func snapshot() -> NSImage
  @IBAction func play(_ sender: AnyObject?)
  @IBAction func pause(_ sender: AnyObject?)
  @IBAction func stop(_ sender: AnyObject?)
  var openGLContext: NSOpenGLContext?
  @available(OSX 10.10, *)
  var antialiasingMode: SCNAntialiasingMode
  var pixelFormat: NSOpenGLPixelFormat?
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval
  @available(OSX 10.8, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(OSX 10.8, *)
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(OSX 10.9, *)
  func isNode(insideFrustum node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(OSX 10.11, *)
  func nodesInsideFrustum(withPointOfView pointOfView: SCNNode) -> [SCNNode]
  @available(OSX 10.9, *)
  func projectPoint(_ point: SCNVector3) -> SCNVector3
  @available(OSX 10.9, *)
  func unprojectPoint(_ point: SCNVector3) -> SCNVector3
  @available(OSX 10.8, *)
  var isPlaying: Bool
  @available(OSX 10.8, *)
  var loops: Bool
  @available(OSX 10.8, *)
  var pointOfView: SCNNode?
  @available(OSX 10.8, *)
  var autoenablesDefaultLighting: Bool
  @available(OSX 10.8, *)
  var isJitteringEnabled: Bool
  @available(OSX 10.9, *)
  func prepare(_ object: AnyObject, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  @available(OSX 10.10, *)
  func prepare(_ objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.9, *)
  var showsStatistics: Bool
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }
  @available(OSX 10.8, *)
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
  var audioListener: SCNNode?
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
}
