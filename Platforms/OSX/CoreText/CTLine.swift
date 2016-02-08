
class CTLine {
}
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var excludeTypographicLeading: CTLineBoundsOptions { get }
  static var excludeTypographicShifts: CTLineBoundsOptions { get }
  static var useHangingPunctuation: CTLineBoundsOptions { get }
  static var useGlyphPathBounds: CTLineBoundsOptions { get }
  static var useOpticalBounds: CTLineBoundsOptions { get }
  @available(OSX 10.11, *)
  static var includeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case start
  case end
  case middle
}
@available(OSX 10.5, *)
func CTLineGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CTLineCreateWithAttributedString(attrString: CFAttributedString) -> CTLine
@available(OSX 10.5, *)
func CTLineCreateTruncatedLine(line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(OSX 10.5, *)
func CTLineCreateJustifiedLine(line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(OSX 10.5, *)
func CTLineGetGlyphCount(line: CTLine) -> CFIndex
@available(OSX 10.5, *)
func CTLineGetGlyphRuns(line: CTLine) -> CFArray
@available(OSX 10.5, *)
func CTLineGetStringRange(line: CTLine) -> CFRange
@available(OSX 10.5, *)
func CTLineGetPenOffsetForFlush(line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(OSX 10.5, *)
func CTLineDraw(line: CTLine, _ context: CGContext)
@available(OSX 10.5, *)
func CTLineGetTypographicBounds(line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(OSX 10.8, *)
func CTLineGetBoundsWithOptions(line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(OSX 10.5, *)
func CTLineGetTrailingWhitespaceWidth(line: CTLine) -> Double
@available(OSX 10.5, *)
func CTLineGetImageBounds(line: CTLine, _ context: CGContext?) -> CGRect
@available(OSX 10.5, *)
func CTLineGetStringIndexForPosition(line: CTLine, _ position: CGPoint) -> CFIndex
@available(OSX 10.5, *)
func CTLineGetOffsetForStringIndex(line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
@available(OSX 10.11, *)
func CTLineEnumerateCaretOffsets(line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
