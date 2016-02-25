
class CAOpenGLLayer : CALayer {
  var asynchronous: Bool
  func canDrawInCGLContext(_ ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInCGLContext(_ ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormatForDisplayMask(_ mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(_ pf: CGLPixelFormatObj)
  func copyCGLContextForPixelFormat(_ pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(_ ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
}
