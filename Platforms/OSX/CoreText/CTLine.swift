
class CTLine {
}
@available(*, deprecated, renamed="CTLine")
typealias CTLineRef = CTLine
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ExcludeTypographicLeading: CTLineBoundsOptions { get }
  static var ExcludeTypographicShifts: CTLineBoundsOptions { get }
  static var UseHangingPunctuation: CTLineBoundsOptions { get }
  static var UseGlyphPathBounds: CTLineBoundsOptions { get }
  static var UseOpticalBounds: CTLineBoundsOptions { get }
  @available(OSX 10.11, *)
  static var IncludeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Start
  case End
  case Middle
}
@available(OSX 10.5, *)
func CTLineGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CTLineCreateWithAttributedString(_ attrString: CFAttributedString) -> CTLine
@available(OSX 10.5, *)
func CTLineCreateTruncatedLine(_ line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(OSX 10.5, *)
func CTLineCreateJustifiedLine(_ line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(OSX 10.5, *)
func CTLineGetGlyphCount(_ line: CTLine) -> CFIndex
@available(OSX 10.5, *)
func CTLineGetGlyphRuns(_ line: CTLine) -> CFArray
@available(OSX 10.5, *)
func CTLineGetStringRange(_ line: CTLine) -> CFRange
@available(OSX 10.5, *)
func CTLineGetPenOffsetForFlush(_ line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(OSX 10.5, *)
func CTLineDraw(_ line: CTLine, _ context: CGContext)
@available(OSX 10.5, *)
func CTLineGetTypographicBounds(_ line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(OSX 10.8, *)
func CTLineGetBoundsWithOptions(_ line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(OSX 10.5, *)
func CTLineGetTrailingWhitespaceWidth(_ line: CTLine) -> Double
@available(OSX 10.5, *)
func CTLineGetImageBounds(_ line: CTLine, _ context: CGContext?) -> CGRect
@available(OSX 10.5, *)
func CTLineGetStringIndexForPosition(_ line: CTLine, _ position: CGPoint) -> CFIndex
@available(OSX 10.5, *)
func CTLineGetOffsetForStringIndex(_ line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
@available(OSX 10.11, *)
func CTLineEnumerateCaretOffsets(_ line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
