
class CTRun {
}
struct CTRunStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoStatus: CTRunStatus { get }
  static var RightToLeft: CTRunStatus { get }
  static var NonMonotonic: CTRunStatus { get }
  static var HasNonIdentityMatrix: CTRunStatus { get }
}
@available(OSX 10.5, *)
func CTRunGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CTRunGetGlyphCount(run: CTRun) -> CFIndex
@available(OSX 10.5, *)
func CTRunGetAttributes(run: CTRun) -> CFDictionary
@available(OSX 10.5, *)
func CTRunGetStatus(run: CTRun) -> CTRunStatus
@available(OSX 10.5, *)
func CTRunGetGlyphsPtr(run: CTRun) -> UnsafePointer<CGGlyph>
@available(OSX 10.5, *)
func CTRunGetGlyphs(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
@available(OSX 10.5, *)
func CTRunGetPositionsPtr(run: CTRun) -> UnsafePointer<CGPoint>
@available(OSX 10.5, *)
func CTRunGetPositions(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
@available(OSX 10.5, *)
func CTRunGetAdvancesPtr(run: CTRun) -> UnsafePointer<CGSize>
@available(OSX 10.5, *)
func CTRunGetAdvances(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
@available(OSX 10.5, *)
func CTRunGetStringIndicesPtr(run: CTRun) -> UnsafePointer<CFIndex>
@available(OSX 10.5, *)
func CTRunGetStringIndices(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
@available(OSX 10.5, *)
func CTRunGetStringRange(run: CTRun) -> CFRange
@available(OSX 10.5, *)
func CTRunGetTypographicBounds(run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(OSX 10.5, *)
func CTRunGetImageBounds(run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
@available(OSX 10.5, *)
func CTRunGetTextMatrix(run: CTRun) -> CGAffineTransform
@available(OSX 10.5, *)
func CTRunDraw(run: CTRun, _ context: CGContext, _ range: CFRange)
