
enum NSScrollArrowPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ScrollerArrowsMaxEnd
  case ScrollerArrowsMinEnd
  static var ScrollerArrowsDefaultSetting: NSScrollArrowPosition { get }
  case ScrollerArrowsNone
}
enum NSUsableScrollerParts : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoScrollerParts
  case OnlyScrollerArrows
  case AllScrollerParts
}
enum NSScrollerPart : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoPart
  case DecrementPage
  case Knob
  case IncrementPage
  case DecrementLine
  case IncrementLine
  case KnobSlot
}
enum NSScrollerArrow : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case IncrementArrow
  case DecrementArrow
}
@available(OSX 10.7, *)
enum NSScrollerStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Legacy
  case Overlay
}
@available(OSX 10.7, *)
enum NSScrollerKnobStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Dark
  case Light
}
class NSScroller : NSControl {
  @available(OSX 10.7, *)
  class func isCompatibleWithOverlayScrollers() -> Bool
  @available(OSX 10.7, *)
  class func scrollerWidthForControlSize(_ controlSize: NSControlSize, scrollerStyle scrollerStyle: NSScrollerStyle) -> CGFloat
  @available(OSX 10.7, *)
  class func preferredScrollerStyle() -> NSScrollerStyle
  @available(OSX 10.7, *)
  var scrollerStyle: NSScrollerStyle
  @available(OSX 10.7, *)
  var knobStyle: NSScrollerKnobStyle
  func rectForPart(_ partCode: NSScrollerPart) -> NSRect
  func checkSpaceForParts()
  var usableParts: NSUsableScrollerParts { get }
  var arrowsPosition: NSScrollArrowPosition
  var controlTint: NSControlTint
  func drawArrow(_ whichArrow: NSScrollerArrow, highlight flag: Bool)
  func drawKnob()
  func drawKnobSlotInRect(_ slotRect: NSRect, highlight flag: Bool)
  func highlight(_ flag: Bool)
  func testPart(_ thePoint: NSPoint) -> NSScrollerPart
  func trackKnob(_ theEvent: NSEvent)
  func trackScrollButtons(_ theEvent: NSEvent)
  var hitPart: NSScrollerPart { get }
  var knobProportion: CGFloat
}
struct __sFlags2 {
  var hitPart: UInt32
  var controlSize: UInt32
  var inMaxEnd: UInt32
  var setFloatValueOverridden: UInt32
  var setFloatValueKnobProportionOverridden: UInt32
  var style: UInt32
  var styleCompatibility: UInt32
  var overlayScrollerState: UInt32
  var knobStyle: UInt32
  var sbPaused: UInt32
  var isAnimatingKnob: UInt32
  var isTrackingMouse: UInt32
  var reserved: UInt32
  init()
  init(hitPart hitPart: UInt32, controlSize controlSize: UInt32, inMaxEnd inMaxEnd: UInt32, setFloatValueOverridden setFloatValueOverridden: UInt32, setFloatValueKnobProportionOverridden setFloatValueKnobProportionOverridden: UInt32, style style: UInt32, styleCompatibility styleCompatibility: UInt32, overlayScrollerState overlayScrollerState: UInt32, knobStyle knobStyle: UInt32, sbPaused sbPaused: UInt32, isAnimatingKnob isAnimatingKnob: UInt32, isTrackingMouse isTrackingMouse: UInt32, reserved reserved: UInt32)
}
struct _sFlags {
  var isHoriz: UInt32
  var arrowsLoc: NSScrollArrowPosition
  var partsUsable: NSUsableScrollerParts
  var fine: UInt32
  var needsEnableFlush: UInt32
  var thumbing: UInt32
  var slotDrawn: UInt32
  var knobDrawn: UInt32
  var lit: UInt32
  var knobLit: UInt32
  var reserved: UInt32
  var controlTint: UInt32
  var repeatCount: UInt32
  init()
  init(isHoriz isHoriz: UInt32, arrowsLoc arrowsLoc: NSScrollArrowPosition, partsUsable partsUsable: NSUsableScrollerParts, fine fine: UInt32, needsEnableFlush needsEnableFlush: UInt32, thumbing thumbing: UInt32, slotDrawn slotDrawn: UInt32, knobDrawn knobDrawn: UInt32, lit lit: UInt32, knobLit knobLit: UInt32, reserved reserved: UInt32, controlTint controlTint: UInt32, repeatCount repeatCount: UInt32)
}
extension NSScroller {
}
@available(OSX 10.7, *)
let NSPreferredScrollerStyleDidChangeNotification: String
