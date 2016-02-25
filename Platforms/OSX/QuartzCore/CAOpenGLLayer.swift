
class CAOpenGLLayer : CALayer {
  var isAsynchronous: Bool
  func canDraw(incglContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func draw(incglContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormat(forDisplayMask mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(_ pf: CGLPixelFormatObj)
  func copyCGLContext(forPixelFormat pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(_ ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
}
