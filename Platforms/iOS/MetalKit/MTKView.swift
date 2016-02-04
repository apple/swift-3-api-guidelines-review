
@available(iOS 9.0, *)
class MTKView : UIView, NSCoding {
  init(frame frameRect: CGRect, device: MTLDevice?)
  init(coder: NSCoder)
  weak var delegate: @sil_weak MTKViewDelegate?
  var device: MTLDevice?
  var currentDrawable: CAMetalDrawable? { get }
  var framebufferOnly: Bool
  var presentsWithTransaction: Bool
  var colorPixelFormat: MTLPixelFormat
  var depthStencilPixelFormat: MTLPixelFormat
  var sampleCount: Int
  var clearColor: MTLClearColor
  var clearDepth: Double
  var clearStencil: UInt32
  var depthStencilTexture: MTLTexture? { get }
  var multisampleColorTexture: MTLTexture? { get }
  func releaseDrawables()
  var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }
  var preferredFramesPerSecond: Int
  var enableSetNeedsDisplay: Bool
  var autoResizeDrawable: Bool
  var drawableSize: CGSize
  var paused: Bool
  func draw()
  convenience init(frame: CGRect)
  convenience init()
}
@available(iOS 9.0, *)
protocol MTKViewDelegate : NSObjectProtocol {
  func mtkView(view: MTKView, drawableSizeWillChange size: CGSize)
  func drawInMTKView(view: MTKView)
}
