
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
@available(iOS 3.2, *)
func CTRunGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
func CTRunGetGlyphCount(run: CTRun) -> CFIndex
@available(iOS 3.2, *)
func CTRunGetAttributes(run: CTRun) -> CFDictionary
@available(iOS 3.2, *)
func CTRunGetStatus(run: CTRun) -> CTRunStatus
@available(iOS 3.2, *)
func CTRunGetGlyphsPtr(run: CTRun) -> UnsafePointer<CGGlyph>
@available(iOS 3.2, *)
func CTRunGetGlyphs(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
@available(iOS 3.2, *)
func CTRunGetPositionsPtr(run: CTRun) -> UnsafePointer<CGPoint>
@available(iOS 3.2, *)
func CTRunGetPositions(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
@available(iOS 3.2, *)
func CTRunGetAdvancesPtr(run: CTRun) -> UnsafePointer<CGSize>
@available(iOS 3.2, *)
func CTRunGetAdvances(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
@available(iOS 3.2, *)
func CTRunGetStringIndicesPtr(run: CTRun) -> UnsafePointer<CFIndex>
@available(iOS 3.2, *)
func CTRunGetStringIndices(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
@available(iOS 3.2, *)
func CTRunGetStringRange(run: CTRun) -> CFRange
@available(iOS 3.2, *)
func CTRunGetTypographicBounds(run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(iOS 3.2, *)
func CTRunGetImageBounds(run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
@available(iOS 3.2, *)
func CTRunGetTextMatrix(run: CTRun) -> CGAffineTransform
@available(iOS 3.2, *)
func CTRunDraw(run: CTRun, _ context: CGContext, _ range: CFRange)
