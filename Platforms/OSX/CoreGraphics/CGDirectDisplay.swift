
typealias CGDirectDisplayID = UInt32
typealias CGOpenGLDisplayMask = UInt32
typealias CGRefreshRate = Double
class CGDisplayMode {
}
@available(*, deprecated, renamed="CGDisplayMode")
typealias CGDisplayModeRef = CGDisplayMode
@available(OSX 10.2, *)
func CGMainDisplayID() -> CGDirectDisplayID
@available(OSX 10.0, *)
func CGGetDisplaysWithPoint(point: CGPoint, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplaysWithRect(rect: CGRect, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplaysWithOpenGLDisplayMask(mask: CGOpenGLDisplayMask, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetActiveDisplayList(maxDisplays: UInt32, _ activeDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.2, *)
func CGGetOnlineDisplayList(maxDisplays: UInt32, _ onlineDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGDisplayIDToOpenGLDisplayMask(display: CGDirectDisplayID) -> CGOpenGLDisplayMask
@available(OSX 10.2, *)
func CGOpenGLDisplayMaskToDisplayID(mask: CGOpenGLDisplayMask) -> CGDirectDisplayID
@available(OSX 10.0, *)
func CGDisplayBounds(display: CGDirectDisplayID) -> CGRect
@available(OSX 10.0, *)
func CGDisplayPixelsWide(display: CGDirectDisplayID) -> Int
@available(OSX 10.0, *)
func CGDisplayPixelsHigh(display: CGDirectDisplayID) -> Int
@available(OSX 10.6, *)
func CGDisplayCopyAllDisplayModes(display: CGDirectDisplayID, _ options: CFDictionary?) -> CFArray?
@available(OSX 10.8, *)
let kCGDisplayShowDuplicateLowResolutionModes: CFString
@available(OSX 10.6, *)
func CGDisplayCopyDisplayMode(display: CGDirectDisplayID) -> CGDisplayMode?
@available(OSX 10.6, *)
func CGDisplaySetDisplayMode(display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
@available(OSX 10.6, *)
func CGDisplayModeGetWidth(mode: CGDisplayMode?) -> Int
@available(OSX 10.6, *)
func CGDisplayModeGetHeight(mode: CGDisplayMode?) -> Int
@available(OSX, introduced=10.6, deprecated=10.11)
func CGDisplayModeCopyPixelEncoding(mode: CGDisplayMode?) -> CFString?
@available(OSX 10.6, *)
func CGDisplayModeGetRefreshRate(mode: CGDisplayMode?) -> Double
@available(OSX 10.6, *)
func CGDisplayModeGetIOFlags(mode: CGDisplayMode?) -> UInt32
@available(OSX 10.6, *)
func CGDisplayModeGetIODisplayModeID(mode: CGDisplayMode?) -> Int32
@available(OSX 10.6, *)
func CGDisplayModeIsUsableForDesktopGUI(mode: CGDisplayMode?) -> Bool
@available(OSX 10.6, *)
func CGDisplayModeGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CGDisplayModeGetPixelWidth(mode: CGDisplayMode?) -> Int
@available(OSX 10.8, *)
func CGDisplayModeGetPixelHeight(mode: CGDisplayMode?) -> Int
typealias CGGammaValue = Float
@available(OSX 10.0, *)
func CGSetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: CGGammaValue, _ redMax: CGGammaValue, _ redGamma: CGGammaValue, _ greenMin: CGGammaValue, _ greenMax: CGGammaValue, _ greenGamma: CGGammaValue, _ blueMin: CGGammaValue, _ blueMax: CGGammaValue, _ blueGamma: CGGammaValue) -> CGError
@available(OSX 10.0, *)
func CGGetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: UnsafeMutablePointer<CGGammaValue>, _ redMax: UnsafeMutablePointer<CGGammaValue>, _ redGamma: UnsafeMutablePointer<CGGammaValue>, _ greenMin: UnsafeMutablePointer<CGGammaValue>, _ greenMax: UnsafeMutablePointer<CGGammaValue>, _ greenGamma: UnsafeMutablePointer<CGGammaValue>, _ blueMin: UnsafeMutablePointer<CGGammaValue>, _ blueMax: UnsafeMutablePointer<CGGammaValue>, _ blueGamma: UnsafeMutablePointer<CGGammaValue>) -> CGError
@available(OSX 10.3, *)
func CGDisplayGammaTableCapacity(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.0, *)
func CGSetDisplayTransferByTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<CGGammaValue>, _ greenTable: UnsafePointer<CGGammaValue>, _ blueTable: UnsafePointer<CGGammaValue>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplayTransferByTable(display: CGDirectDisplayID, _ capacity: UInt32, _ redTable: UnsafeMutablePointer<CGGammaValue>, _ greenTable: UnsafeMutablePointer<CGGammaValue>, _ blueTable: UnsafeMutablePointer<CGGammaValue>, _ sampleCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGSetDisplayTransferByByteTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<UInt8>, _ greenTable: UnsafePointer<UInt8>, _ blueTable: UnsafePointer<UInt8>) -> CGError
@available(OSX 10.0, *)
func CGDisplayRestoreColorSyncSettings()
struct CGCaptureOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoOptions: CGCaptureOptions { get }
  @available(*, deprecated)
  static var NoFill: CGCaptureOptions { get }
}
@available(OSX 10.0, *)
func CGDisplayCapture(display: CGDirectDisplayID) -> CGError
@available(OSX 10.3, *)
func CGDisplayCaptureWithOptions(display: CGDirectDisplayID, _ options: CGCaptureOptions) -> CGError
@available(OSX 10.0, *)
func CGDisplayRelease(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGCaptureAllDisplays() -> CGError
@available(OSX 10.3, *)
func CGCaptureAllDisplaysWithOptions(options: CGCaptureOptions) -> CGError
@available(OSX 10.0, *)
func CGReleaseAllDisplays() -> CGError
@available(OSX 10.0, *)
func CGShieldingWindowID(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.0, *)
func CGShieldingWindowLevel() -> Int32
@available(OSX 10.6, *)
func CGDisplayCreateImage(displayID: CGDirectDisplayID) -> CGImage?
@available(OSX 10.6, *)
func CGDisplayCreateImageForRect(display: CGDirectDisplayID, _ rect: CGRect) -> CGImage?
@available(OSX 10.0, *)
func CGDisplayHideCursor(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGDisplayShowCursor(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGDisplayMoveCursorToPoint(display: CGDirectDisplayID, _ point: CGPoint) -> CGError
@available(OSX 10.0, *)
func CGGetLastMouseDelta(deltaX: UnsafeMutablePointer<Int32>, _ deltaY: UnsafeMutablePointer<Int32>)
@available(OSX 10.3, *)
func CGDisplayGetDrawingContext(display: CGDirectDisplayID) -> CGContext?
var kCGDisplayWidth: String { get }
var kCGDisplayHeight: String { get }
var kCGDisplayMode: String { get }
var kCGDisplayBitsPerPixel: String { get }
var kCGDisplayBitsPerSample: String { get }
var kCGDisplaySamplesPerPixel: String { get }
var kCGDisplayRefreshRate: String { get }
var kCGDisplayModeUsableForDesktopGUI: String { get }
var kCGDisplayIOFlags: String { get }
var kCGDisplayBytesPerRow: String { get }
var kCGIODisplayModeID: String { get }
var kCGDisplayModeIsSafeForHardware: String { get }
var kCGDisplayModeIsInterlaced: String { get }
var kCGDisplayModeIsStretched: String { get }
var kCGDisplayModeIsTelevisionOutput: String { get }
typealias CGDisplayCount = UInt32
typealias CGDisplayErr = CGError
