
@available(OSX 10.6, *)
class NSOpenGLLayer : CAOpenGLLayer {
  unowned(unsafe) var view: @sil_unmanaged NSView?
  var openGLPixelFormat: NSOpenGLPixelFormat?
  var openGLContext: NSOpenGLContext?
  func openGLPixelFormatForDisplayMask(mask: UInt32) -> NSOpenGLPixelFormat
  func openGLContextForPixelFormat(pixelFormat: NSOpenGLPixelFormat) -> NSOpenGLContext
  func canDrawInOpenGLContext(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInOpenGLContext(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
