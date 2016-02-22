
var CGL_VERSION_1_0: Int32 { get }
var CGL_VERSION_1_1: Int32 { get }
var CGL_VERSION_1_2: Int32 { get }
var CGL_VERSION_1_3: Int32 { get }
func CGLChoosePixelFormat(_ attribs: UnsafePointer<CGLPixelFormatAttribute>, _ pix: UnsafeMutablePointer<CGLPixelFormatObj>, _ npix: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyPixelFormat(_ pix: CGLPixelFormatObj) -> CGLError
func CGLDescribePixelFormat(_ pix: CGLPixelFormatObj, _ pix_num: GLint, _ attrib: CGLPixelFormatAttribute, _ value: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.5, *)
func CGLReleasePixelFormat(_ pix: CGLPixelFormatObj)
@available(OSX 10.5, *)
func CGLRetainPixelFormat(_ pix: CGLPixelFormatObj) -> CGLPixelFormatObj
@available(OSX 10.5, *)
func CGLGetPixelFormatRetainCount(_ pix: CGLPixelFormatObj) -> GLuint
func CGLQueryRendererInfo(_ display_mask: GLuint, _ rend: UnsafeMutablePointer<CGLRendererInfoObj>, _ nrend: UnsafeMutablePointer<GLint>) -> CGLError
func CGLDestroyRendererInfo(_ rend: CGLRendererInfoObj) -> CGLError
func CGLDescribeRenderer(_ rend: CGLRendererInfoObj, _ rend_num: GLint, _ prop: CGLRendererProperty, _ value: UnsafeMutablePointer<GLint>) -> CGLError
func CGLCreateContext(_ pix: CGLPixelFormatObj, _ share: CGLContextObj, _ ctx: UnsafeMutablePointer<CGLContextObj>) -> CGLError
func CGLDestroyContext(_ ctx: CGLContextObj) -> CGLError
@available(OSX 10.5, *)
func CGLRetainContext(_ ctx: CGLContextObj) -> CGLContextObj
@available(OSX 10.5, *)
func CGLReleaseContext(_ ctx: CGLContextObj)
@available(OSX 10.5, *)
func CGLGetContextRetainCount(_ ctx: CGLContextObj) -> GLuint
@available(OSX 10.5, *)
func CGLGetPixelFormat(_ ctx: CGLContextObj) -> CGLPixelFormatObj
func CGLClearDrawable(_ ctx: CGLContextObj) -> CGLError
func CGLFlushDrawable(_ ctx: CGLContextObj) -> CGLError
func CGLEnable(_ ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLDisable(_ ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
func CGLIsEnabled(_ ctx: CGLContextObj, _ pname: CGLContextEnable, _ enable: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetParameter(_ ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafePointer<GLint>) -> CGLError
func CGLGetParameter(_ ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetVirtualScreen(_ ctx: CGLContextObj, _ screen: GLint) -> CGLError
func CGLGetVirtualScreen(_ ctx: CGLContextObj, _ screen: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.7, *)
func CGLUpdateContext(_ ctx: CGLContextObj) -> CGLError
@available(OSX 10.6, *)
func CGLSetGlobalOption(_ pname: CGLGlobalOption, _ params: UnsafePointer<GLint>) -> CGLError
@available(OSX 10.6, *)
func CGLGetGlobalOption(_ pname: CGLGlobalOption, _ params: UnsafeMutablePointer<GLint>) -> CGLError
func CGLSetOption(_ pname: CGLGlobalOption, _ param: GLint) -> CGLError
func CGLGetOption(_ pname: CGLGlobalOption, _ param: UnsafeMutablePointer<GLint>) -> CGLError
@available(OSX 10.4, *)
func CGLLockContext(_ ctx: CGLContextObj) -> CGLError
@available(OSX 10.4, *)
func CGLUnlockContext(_ ctx: CGLContextObj) -> CGLError
func CGLGetVersion(_ majorvers: UnsafeMutablePointer<GLint>, _ minorvers: UnsafeMutablePointer<GLint>)
func CGLErrorString(_ error: CGLError) -> UnsafePointer<Int8>
