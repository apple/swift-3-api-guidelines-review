
class NSOpenGLView : NSView {
  class func defaultPixelFormat() -> NSOpenGLPixelFormat
  init?(frame frameRect: NSRect, pixelFormat format: NSOpenGLPixelFormat?)
  var openGLContext: NSOpenGLContext?
  func clearGLContext()
  func update()
  func reshape()
  var pixelFormat: NSOpenGLPixelFormat?
  func prepareOpenGL()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  @available(OSX 10.7, *)
  var wantsBestResolutionOpenGLSurface: Bool
}
extension NSView {
  @available(OSX 10.11, *)
  var wantsExtendedDynamicRangeOpenGLSurface: Bool
}
