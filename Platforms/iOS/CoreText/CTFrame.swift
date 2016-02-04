
class CTFrame {
}
@available(iOS 3.2, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TopToBottom
  case RightToLeft
  case LeftToRight
}
@available(iOS 3.2, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EvenOdd
  case WindingNumber
}
@available(iOS 4.2, *)
let kCTFramePathFillRuleAttributeName: CFString
@available(iOS 4.2, *)
let kCTFramePathWidthAttributeName: CFString
@available(iOS 4.3, *)
let kCTFrameClippingPathsAttributeName: CFString
@available(iOS 4.3, *)
let kCTFramePathClippingPathAttributeName: CFString
@available(iOS 3.2, *)
func CTFrameGetStringRange(frame: CTFrame) -> CFRange
@available(iOS 3.2, *)
func CTFrameGetVisibleStringRange(frame: CTFrame) -> CFRange
@available(iOS 3.2, *)
func CTFrameGetPath(frame: CTFrame) -> CGPath
@available(iOS 3.2, *)
func CTFrameGetFrameAttributes(frame: CTFrame) -> CFDictionary?
@available(iOS 3.2, *)
func CTFrameGetLines(frame: CTFrame) -> CFArray
@available(iOS 3.2, *)
func CTFrameGetLineOrigins(frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(iOS 3.2, *)
func CTFrameDraw(frame: CTFrame, _ context: CGContext)
