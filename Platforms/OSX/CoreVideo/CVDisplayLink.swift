
class CVDisplayLink {
}
typealias CVDisplayLinkOutputCallback = @convention(c) (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>, UnsafeMutablePointer<Void>) -> CVReturn
typealias CVDisplayLinkOutputHandler = (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplays(_ displayArray: UnsafeMutablePointer<CGDirectDisplayID>, _ count: CFIndex, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithOpenGLDisplayMask(_ mask: CGOpenGLDisplayMask, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplay(_ displayID: CGDirectDisplayID, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithActiveCGDisplays(_ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplay(_ displayLink: CVDisplayLink, _ displayID: CGDirectDisplayID) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext(_ displayLink: CVDisplayLink, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentCGDisplay(_ displayLink: CVDisplayLink) -> CGDirectDisplayID
@available(OSX 10.4, *)
func CVDisplayLinkSetOutputCallback(_ displayLink: CVDisplayLink, _ callback: CVDisplayLinkOutputCallback, _ userInfo: UnsafeMutablePointer<Void>) -> CVReturn
func CVDisplayLinkSetOutputHandler(_ displayLink: CVDisplayLink, _ handler: CVDisplayLinkOutputHandler) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkStart(_ displayLink: CVDisplayLink) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkStop(_ displayLink: CVDisplayLink) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetNominalOutputVideoRefreshPeriod(_ displayLink: CVDisplayLink) -> CVTime
@available(OSX 10.4, *)
func CVDisplayLinkGetOutputVideoLatency(_ displayLink: CVDisplayLink) -> CVTime
@available(OSX 10.4, *)
func CVDisplayLinkGetActualOutputVideoRefreshPeriod(_ displayLink: CVDisplayLink) -> Double
@available(OSX 10.4, *)
func CVDisplayLinkIsRunning(_ displayLink: CVDisplayLink) -> Bool
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentTime(_ displayLink: CVDisplayLink, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkTranslateTime(_ displayLink: CVDisplayLink, _ inTime: UnsafePointer<CVTimeStamp>, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn
