
var CGL_VERSION_1_0: Int32 { get }
var CGL_VERSION_1_1: Int32 { get }
var CGL_VERSION_1_2: Int32 { get }
var CGL_VERSION_1_3: Int32 { get }
func CGLChoosePixelFormat(attribs: UnsafePointer<CGLPixelFormatAttribute>, _ pix: UnsafeMutablePointer<CGLPixelFormatObj>, _ npix: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyPixelFormat(pix: CGLPixelFormatObj) -> CGLError
func CGLDescribePixelFormat(pix: CGLPixelFormatObj, _ pix_num: GLint, _ attrib: CGLPixelFormatAttribute, _ value: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.5, *)
func CGLReleasePixelFormat(pix: CGLPixelFormatObj)
@available(OSX 10.5, *)
func CGLRetainPixelFormat(pix: CGLPixelFormatObj) -> CGLPixelFormatObj
@available(OSX 10.5, *)
func CGLGetPixelFormatRetainCount(pix: CGLPixelFormatObj) -> GLuint
func CGLQueryRendererInfo(display_mask: GLuint, _ rend: UnsafeMutablePointer<CGLRendererInfoObj>, _ nrend: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyRendererInfo(rend: CGLRendererInfoObj) -> CGLError
func CGLDescribeRenderer(rend: CGLRendererInfoObj, _ rend_num: GLint, _ prop: CGLRendererProperty, _ value: UnsafeMutablePointer<GLint>) -> CGLError
func CGLCreateContext(pix: CGLPixelFormatObj, _ share: CGLContextObj, _ ctx: UnsafeMutablePointer<CGLContextObj>) -> CGLError
func CGLDestroyContext(ctx: CGLContextObj) -> CGLError
@available(OSX 10.5, *)
func CGLRetainContext(ctx: CGLContextObj) -> CGLContextObj
@available(OSX 10.5, *)
func CGLReleaseContext(ctx: CGLContextObj)
@available(OSX 10.5, *)
func CGLGetContextRetainCount(ctx: CGLContextObj) -> GLuint
@available(OSX 10.5, *)
func CGLGetPixelFormat(ctx: CGLContextObj) -> CGLPixelFormatObj
func CGLClearDrawable(ctx: CGLContextObj) -> CGLError
func CGLFlushDrawable(ctx: CGLContextObj) -> CGLError
func CGLEnable(ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLDisable(ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLIsEnabled(ctx: CGLContextObj, _ pname: CGLContextEnable, _ enable: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetParameter(ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafePointer<GLint>) -> CGLError
func CGLGetParameter(ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetVirtualScreen(ctx: CGLContextObj, _ screen: GLint) -> CGLError
func CGLGetVirtualScreen(ctx: CGLContextObj, _ screen: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.7, *)
func CGLUpdateContext(ctx: CGLContextObj) -> CGLError
@available(OSX 10.6, *)
func CGLSetGlobalOption(pname: CGLGlobalOption, _ params: UnsafePointer<GLint>) -> CGLError
@available(OSX 10.6, *)
func CGLGetGlobalOption(pname: CGLGlobalOption, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetOption(pname: CGLGlobalOption, _ param: GLint) -> CGLError
func CGLGetOption(pname: CGLGlobalOption, _ param: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.4, *)
func CGLLockContext(ctx: CGLContextObj) -> CGLError
@available(OSX 10.4, *)
func CGLUnlockContext(ctx: CGLContextObj) -> CGLError
func CGLGetVersion(majorvers: UnsafeMutablePointer<GLint>, _ minorvers: UnsafeMutablePointer<GLint>)
func CGLErrorString(error: CGLError) -> UnsafePointer<Int8>
