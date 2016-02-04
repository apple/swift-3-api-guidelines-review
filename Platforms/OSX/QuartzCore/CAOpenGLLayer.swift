
class CAOpenGLLayer : CALayer {
  var isAsynchronous: Bool
  func canDrawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInCGLContext(ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  func copyCGLPixelFormatForDisplayMask(mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(pf: CGLPixelFormatObj)
  func copyCGLContextForPixelFormat(pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(ctx: CGLContextObj)
  var colorspace: CGColorSpace
  var wantsExtendedDynamicRangeContent: Bool
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
