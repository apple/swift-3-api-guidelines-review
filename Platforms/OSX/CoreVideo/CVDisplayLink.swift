
class CVDisplayLink {
}
@available(*, deprecated, renamed="CVDisplayLink")
typealias CVDisplayLinkRef = CVDisplayLink
typealias CVDisplayLinkOutputCallback = @convention(c) (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>, UnsafeMutablePointer<Void>) -> CVReturn
typealias CVDisplayLinkOutputHandler = (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplays(displayArray: UnsafeMutablePointer<CGDirectDisplayID>, _ count: CFIndex, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithOpenGLDisplayMask(mask: CGOpenGLDisplayMask, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplay(displayID: CGDirectDisplayID, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithActiveCGDisplays(displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplay(displayLink: CVDisplayLink, _ displayID: CGDirectDisplayID) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext(displayLink: CVDisplayLink, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentCGDisplay(displayLink: CVDisplayLink) -> CGDirectDisplayID
@available(OSX 10.4, *)
func CVDisplayLinkSetOutputCallback(displayLink: CVDisplayLink, _ callback: CVDisplayLinkOutputCallback, _ userInfo: UnsafeMutablePointer<Void>) -> CVReturn
func CVDisplayLinkSetOutputHandler(displayLink: CVDisplayLink, _ handler: CVDisplayLinkOutputHandler) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkStart(displayLink: CVDisplayLink) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkStop(displayLink: CVDisplayLink) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetNominalOutputVideoRefreshPeriod(displayLink: CVDisplayLink) -> CVTime
@available(OSX 10.4, *)
func CVDisplayLinkGetOutputVideoLatency(displayLink: CVDisplayLink) -> CVTime
@available(OSX 10.4, *)
func CVDisplayLinkGetActualOutputVideoRefreshPeriod(displayLink: CVDisplayLink) -> Double
@available(OSX 10.4, *)
func CVDisplayLinkIsRunning(displayLink: CVDisplayLink) -> Bool
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentTime(displayLink: CVDisplayLink, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkTranslateTime(displayLink: CVDisplayLink, _ inTime: UnsafePointer<CVTimeStamp>, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn
