
class CTFrame {
}
@available(iOS 3.2, *)
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case topToBottom
  case rightToLeft
  case leftToRight
}
@available(iOS 3.2, *)
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case evenOdd
  case windingNumber
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
func CTFrameGetStringRange(_ frame: CTFrame) -> CFRange
@available(iOS 3.2, *)
func CTFrameGetVisibleStringRange(_ frame: CTFrame) -> CFRange
@available(iOS 3.2, *)
func CTFrameGetPath(_ frame: CTFrame) -> CGPath
@available(iOS 3.2, *)
func CTFrameGetFrameAttributes(_ frame: CTFrame) -> CFDictionary?
@available(iOS 3.2, *)
func CTFrameGetLines(_ frame: CTFrame) -> CFArray
@available(iOS 3.2, *)
func CTFrameGetLineOrigins(_ frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
@available(iOS 3.2, *)
func CTFrameDraw(_ frame: CTFrame, _ context: CGContext)
