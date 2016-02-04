
class CTLine {
}
@available(*, deprecated, renamed="CTLine")
typealias CTLineRef = CTLine
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ExcludeTypographicLeading: CTLineBoundsOptions { get }
  static var ExcludeTypographicShifts: CTLineBoundsOptions { get }
  static var UseHangingPunctuation: CTLineBoundsOptions { get }
  static var UseGlyphPathBounds: CTLineBoundsOptions { get }
  static var UseOpticalBounds: CTLineBoundsOptions { get }
  @available(tvOS 8.0, *)
  static var IncludeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Start
  case End
  case Middle
}
@available(tvOS 3.2, *)
func CTLineGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
func CTLineCreateWithAttributedString(attrString: CFAttributedString) -> CTLine
@available(tvOS 3.2, *)
func CTLineCreateTruncatedLine(line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(tvOS 3.2, *)
func CTLineCreateJustifiedLine(line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(tvOS 3.2, *)
func CTLineGetGlyphCount(line: CTLine) -> CFIndex
@available(tvOS 3.2, *)
func CTLineGetGlyphRuns(line: CTLine) -> CFArray
@available(tvOS 3.2, *)
func CTLineGetStringRange(line: CTLine) -> CFRange
@available(tvOS 3.2, *)
func CTLineGetPenOffsetForFlush(line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(tvOS 3.2, *)
func CTLineDraw(line: CTLine, _ context: CGContext)
@available(tvOS 3.2, *)
func CTLineGetTypographicBounds(line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(tvOS 6.0, *)
func CTLineGetBoundsWithOptions(line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(tvOS 3.2, *)
func CTLineGetTrailingWhitespaceWidth(line: CTLine) -> Double
@available(tvOS 3.2, *)
func CTLineGetImageBounds(line: CTLine, _ context: CGContext?) -> CGRect
@available(tvOS 3.2, *)
func CTLineGetStringIndexForPosition(line: CTLine, _ position: CGPoint) -> CFIndex
@available(tvOS 3.2, *)
func CTLineGetOffsetForStringIndex(line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
@available(tvOS 9.0, *)
func CTLineEnumerateCaretOffsets(line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
