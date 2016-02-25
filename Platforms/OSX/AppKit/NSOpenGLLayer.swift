
@available(OSX 10.6, *)
class NSOpenGLLayer : CAOpenGLLayer {
  unowned(unsafe) var view: @sil_unmanaged NSView?
  var openGLPixelFormat: NSOpenGLPixelFormat?
  var openGLContext: NSOpenGLContext?
  func openGLPixelFormatForDisplayMask(_ mask: UInt32) -> NSOpenGLPixelFormat
  func openGLContextForPixelFormat(_ pixelFormat: NSOpenGLPixelFormat) -> NSOpenGLContext
  func canDrawInOpenGLContext(_ context: NSOpenGLContext, pixelFormat pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInOpenGLContext(_ context: NSOpenGLContext, pixelFormat pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
}
