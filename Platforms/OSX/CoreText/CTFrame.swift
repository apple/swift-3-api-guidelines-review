
class CTFrame {
}
@available(*, deprecated, renamed="CTFrame")
typealias CTFrameRef = CTFrame
@available(OSX 10.5, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TopToBottom
  case RightToLeft
  case LeftToRight
}
@available(OSX 10.5, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EvenOdd
  case WindingNumber
}
@available(OSX 10.7, *)
let kCTFramePathFillRuleAttributeName: CFString
@available(OSX 10.7, *)
let kCTFramePathWidthAttributeName: CFString
@available(OSX 10.7, *)
let kCTFrameClippingPathsAttributeName: CFString
@available(OSX 10.7, *)
let kCTFramePathClippingPathAttributeName: CFString
@available(OSX 10.5, *)
func CTFrameGetStringRange(_ frame: CTFrame) -> CFRange
@available(OSX 10.5, *)
func CTFrameGetVisibleStringRange(_ frame: CTFrame) -> CFRange
@available(OSX 10.5, *)
func CTFrameGetPath(_ frame: CTFrame) -> CGPath
@available(OSX 10.5, *)
func CTFrameGetFrameAttributes(_ frame: CTFrame) -> CFDictionary?
@available(OSX 10.5, *)
func CTFrameGetLines(_ frame: CTFrame) -> CFArray
@available(OSX 10.5, *)
func CTFrameGetLineOrigins(_ frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(OSX 10.5, *)
func CTFrameDraw(_ frame: CTFrame, _ context: CGContext)
