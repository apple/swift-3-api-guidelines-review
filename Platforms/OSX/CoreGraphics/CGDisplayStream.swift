
class CGDisplayStream {
}
class CGDisplayStreamUpdate {
}
enum CGDisplayStreamUpdateRectType : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case refreshedRects
  case movedRects
  case dirtyRects
  case reducedDirtyRects
}
enum CGDisplayStreamFrameStatus : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case frameComplete
  case frameIdle
  case frameBlank
  case stopped
}
typealias CGDisplayStreamFrameAvailableHandler = (CGDisplayStreamFrameStatus, UInt64, IOSurface?, CGDisplayStreamUpdate?) -> Void
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetRects(_ updateRef: CGDisplayStreamUpdate?, _ rectType: CGDisplayStreamUpdateRectType, _ rectCount: UnsafeMutablePointer<Int>) -> UnsafePointer<CGRect>
@available(OSX 10.8, *)
func CGDisplayStreamUpdateCreateMergedUpdate(_ firstUpdate: CGDisplayStreamUpdate?, _ secondUpdate: CGDisplayStreamUpdate?) -> CGDisplayStreamUpdate?
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetMovedRectsDelta(_ updateRef: CGDisplayStreamUpdate?, _ dx: UnsafeMutablePointer<CGFloat>, _ dy: UnsafeMutablePointer<CGFloat>)
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetDropCount(_ updateRef: CGDisplayStreamUpdate?) -> Int
@available(OSX 10.8, *)
let kCGDisplayStreamSourceRect: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamDestinationRect: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamPreserveAspectRatio: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamColorSpace: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamMinimumFrameTime: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamShowCursor: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamQueueDepth: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_ITU_R_709_2: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_ITU_R_601_4: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_SMPTE_240M_1995: CFString
@available(OSX 10.8, *)
func CGDisplayStreamGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CGDisplayStreamCreate(_ display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?
@available(OSX 10.8, *)
func CGDisplayStreamCreateWithDispatchQueue(_ display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ queue: dispatch_queue_t, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?
@available(OSX 10.8, *)
func CGDisplayStreamStart(_ displayStream: CGDisplayStream?) -> CGError
@available(OSX 10.8, *)
func CGDisplayStreamStop(_ displayStream: CGDisplayStream?) -> CGError
@available(OSX 10.8, *)
func CGDisplayStreamGetRunLoopSource(_ displayStream: CGDisplayStream?) -> CFRunLoopSource?
