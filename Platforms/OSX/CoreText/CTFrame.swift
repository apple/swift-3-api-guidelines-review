
class CTFrame {
}
@available(OSX 10.5, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case topToBottom
  case rightToLeft
  case leftToRight
}
@available(OSX 10.5, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case evenOdd
  case windingNumber
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
func CTFrameGetStringRange(frame: CTFrame) -> CFRange
@available(OSX 10.5, *)
func CTFrameGetVisibleStringRange(frame: CTFrame) -> CFRange
@available(OSX 10.5, *)
func CTFrameGetPath(frame: CTFrame) -> CGPath
@available(OSX 10.5, *)
func CTFrameGetFrameAttributes(frame: CTFrame) -> CFDictionary?
@available(OSX 10.5, *)
func CTFrameGetLines(frame: CTFrame) -> CFArray
@available(OSX 10.5, *)
func CTFrameGetLineOrigins(frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(OSX 10.5, *)
func CTFrameDraw(frame: CTFrame, _ context: CGContext)
