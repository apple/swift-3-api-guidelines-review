
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
  @available(iOS 8.0, *)
  static var includeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case start
  case end
  case middle
}
@available(iOS 3.2, *)
func CTLineGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
func CTLineCreateWithAttributedString(attrString: CFAttributedString) -> CTLine
@available(iOS 3.2, *)
func CTLineCreateTruncatedLine(line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
@available(iOS 3.2, *)
func CTLineCreateJustifiedLine(line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
@available(iOS 3.2, *)
func CTLineGetGlyphCount(line: CTLine) -> CFIndex
@available(iOS 3.2, *)
func CTLineGetGlyphRuns(line: CTLine) -> CFArray
@available(iOS 3.2, *)
func CTLineGetStringRange(line: CTLine) -> CFRange
@available(iOS 3.2, *)
func CTLineGetPenOffsetForFlush(line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
@available(iOS 3.2, *)
func CTLineDraw(line: CTLine, _ context: CGContext)
@available(iOS 3.2, *)
func CTLineGetTypographicBounds(line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
@available(iOS 6.0, *)
func CTLineGetBoundsWithOptions(line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
@available(iOS 3.2, *)
func CTLineGetTrailingWhitespaceWidth(line: CTLine) -> Double
@available(iOS 3.2, *)
func CTLineGetImageBounds(line: CTLine, _ context: CGContext?) -> CGRect
@available(iOS 3.2, *)
func CTLineGetStringIndexForPosition(line: CTLine, _ position: CGPoint) -> CFIndex
@available(iOS 3.2, *)
func CTLineGetOffsetForStringIndex(line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
@available(iOS 9.0, *)
func CTLineEnumerateCaretOffsets(line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
