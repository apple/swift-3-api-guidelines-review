
enum NSEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case MouseEntered
  case MouseExited
  case KeyDown
  case KeyUp
  case FlagsChanged
  case AppKitDefined
  case SystemDefined
  case ApplicationDefined
  case Periodic
  case CursorUpdate
  case ScrollWheel
  case TabletPoint
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  @available(OSX 10.5, *)
  case EventTypeGesture
  @available(OSX 10.5, *)
  case EventTypeMagnify
  @available(OSX 10.5, *)
  case EventTypeSwipe
  @available(OSX 10.5, *)
  case EventTypeRotate
  @available(OSX 10.5, *)
  case EventTypeBeginGesture
  @available(OSX 10.5, *)
  case EventTypeEndGesture
  @available(OSX 10.8, *)
  case EventTypeSmartMagnify
  @available(OSX 10.8, *)
  case EventTypeQuickLook
  @available(OSX 10.10.3, *)
  case EventTypePressure
}
struct NSEventMask : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var LeftMouseDownMask: NSEventMask { get }
  static var LeftMouseUpMask: NSEventMask { get }
  static var RightMouseDownMask: NSEventMask { get }
  static var RightMouseUpMask: NSEventMask { get }
  static var MouseMovedMask: NSEventMask { get }
  static var LeftMouseDraggedMask: NSEventMask { get }
  static var RightMouseDraggedMask: NSEventMask { get }
  static var MouseEnteredMask: NSEventMask { get }
  static var MouseExitedMask: NSEventMask { get }
  static var KeyDownMask: NSEventMask { get }
  static var KeyUpMask: NSEventMask { get }
  static var FlagsChangedMask: NSEventMask { get }
  static var AppKitDefinedMask: NSEventMask { get }
  static var SystemDefinedMask: NSEventMask { get }
  static var ApplicationDefinedMask: NSEventMask { get }
  static var PeriodicMask: NSEventMask { get }
  static var CursorUpdateMask: NSEventMask { get }
  static var ScrollWheelMask: NSEventMask { get }
  static var TabletPointMask: NSEventMask { get }
  static var TabletProximityMask: NSEventMask { get }
  static var OtherMouseDownMask: NSEventMask { get }
  static var OtherMouseUpMask: NSEventMask { get }
  static var OtherMouseDraggedMask: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskGesture: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskMagnify: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskSwipe: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskRotate: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskBeginGesture: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskEndGesture: NSEventMask { get }
  @available(OSX 10.8, *)
  static var EventMaskSmartMagnify: NSEventMask { get }
  @available(OSX 10.10.3, *)
  static var EventMaskPressure: NSEventMask { get }
  static var AnyEventMask: NSEventMask { get }
}
func NSEventMaskFromType(type: NSEventType) -> NSEventMask
struct NSEventModifierFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlphaShiftKeyMask: NSEventModifierFlags { get }
  static var ShiftKeyMask: NSEventModifierFlags { get }
  static var ControlKeyMask: NSEventModifierFlags { get }
  static var AlternateKeyMask: NSEventModifierFlags { get }
  static var CommandKeyMask: NSEventModifierFlags { get }
  static var NumericPadKeyMask: NSEventModifierFlags { get }
  static var HelpKeyMask: NSEventModifierFlags { get }
  static var FunctionKeyMask: NSEventModifierFlags { get }
  static var DeviceIndependentModifierFlagsMask: NSEventModifierFlags { get }
}
enum NSPointingDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnknownPointingDevice
  case PenPointingDevice
  case CursorPointingDevice
  case EraserPointingDevice
}
struct NSEventButtonMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PenTipMask: NSEventButtonMask { get }
  static var PenLowerSideMask: NSEventButtonMask { get }
  static var PenUpperSideMask: NSEventButtonMask { get }
}
@available(OSX 10.7, *)
struct NSEventPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSEventPhase { get }
  static var Began: NSEventPhase { get }
  static var Stationary: NSEventPhase { get }
  static var Changed: NSEventPhase { get }
  static var Ended: NSEventPhase { get }
  static var Cancelled: NSEventPhase { get }
  static var MayBegin: NSEventPhase { get }
}
@available(OSX 10.7, *)
enum NSEventGestureAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Horizontal
  case Vertical
}
@available(OSX 10.7, *)
struct NSEventSwipeTrackingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LockDirection: NSEventSwipeTrackingOptions { get }
  static var ClampGestureAmount: NSEventSwipeTrackingOptions { get }
}
enum NSEventSubtype : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case NSWindowExposedEventType
  case NSApplicationActivatedEventType
  case NSApplicationDeactivatedEventType
  case NSWindowMovedEventType
  case NSScreenChangedEventType
  case NSAWTEventType
  static var NSPowerOffEventType: NSEventSubtype { get }
  static var NSMouseEventSubtype: NSEventSubtype { get }
  static var NSTabletPointEventSubtype: NSEventSubtype { get }
  static var NSTabletProximityEventSubtype: NSEventSubtype { get }
  @available(OSX 10.6, *)
  case NSTouchEventSubtype
}
@available(OSX 10.10.3, *)
enum NSPressureBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PrimaryDefault
  case PrimaryClick
  case PrimaryGeneric
  case PrimaryAccelerator
  case PrimaryDeepClick
  case PrimaryDeepDrag
}
class NSEvent : Object, Copying, Coding {
  var type: NSEventType { get }
  var modifierFlags: NSEventModifierFlags { get }
  var timestamp: TimeInterval { get }
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  var windowNumber: Int { get }
  var context: NSGraphicsContext? { get }
  var clickCount: Int { get }
  var buttonNumber: Int { get }
  var eventNumber: Int { get }
  var pressure: Float { get }
  var locationInWindow: Point { get }
  var deltaX: CGFloat { get }
  var deltaY: CGFloat { get }
  var deltaZ: CGFloat { get }
  @available(OSX 10.7, *)
  var hasPreciseScrollingDeltas: Bool { get }
  @available(OSX 10.7, *)
  var scrollingDeltaX: CGFloat { get }
  @available(OSX 10.7, *)
  var scrollingDeltaY: CGFloat { get }
  @available(OSX 10.7, *)
  var momentumPhase: NSEventPhase { get }
  @available(OSX 10.7, *)
  var isDirectionInvertedFromDevice: Bool { get }
  var characters: String? { get }
  var charactersIgnoringModifiers: String? { get }
  var isARepeat: Bool { get }
  var keyCode: UInt16 { get }
  var trackingNumber: Int { get }
  var userData: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.5, *)
  var trackingArea: NSTrackingArea? { get }
  var subtype: NSEventSubtype { get }
  var data1: Int { get }
  var data2: Int { get }
  @available(OSX 10.5, *)
  var eventRef: UnsafePointer<Void> { get }
  @available(OSX 10.5, *)
  /*not inherited*/ init?(eventRef: UnsafePointer<Void>)
  @available(OSX 10.5, *)
  var cgEvent: CGEvent? { get }
  @available(OSX 10.5, *)
  /*not inherited*/ init?(cgEvent: CGEvent)
  @available(OSX 10.5, *)
  class func setMouseCoalescingEnabled(flag: Bool)
  @available(OSX 10.5, *)
  class func isMouseCoalescingEnabled() -> Bool
  @available(OSX 10.5, *)
  var magnification: CGFloat { get }
  var deviceID: Int { get }
  var rotation: Float { get }
  var absoluteX: Int { get }
  var absoluteY: Int { get }
  var absoluteZ: Int { get }
  var buttonMask: NSEventButtonMask { get }
  var tilt: Point { get }
  var tangentialPressure: Float { get }
  var vendorDefined: AnyObject { get }
  var vendorID: Int { get }
  var tabletID: Int { get }
  var pointingDeviceID: Int { get }
  var systemTabletID: Int { get }
  var vendorPointingDeviceType: Int { get }
  var pointingDeviceSerialNumber: Int { get }
  var uniqueID: UInt64 { get }
  var capabilityMask: Int { get }
  var pointingDeviceType: NSPointingDeviceType { get }
  var isEnteringProximity: Bool { get }
  @available(OSX 10.6, *)
  func touchesMatching(phase: NSTouchPhase, in view: NSView?) -> Set<NSTouch>
  @available(OSX 10.7, *)
  var phase: NSEventPhase { get }
  @available(OSX 10.10.3, *)
  var stage: Int { get }
  @available(OSX 10.10.3, *)
  var stageTransition: CGFloat { get }
  @available(OSX 10.10.3, *)
  var associatedEventsMask: NSEventMask { get }
  @available(OSX 10.11, *)
  var pressureBehavior: NSPressureBehavior { get }
  @available(OSX 10.7, *)
  class func isSwipeTrackingFromScrollEventsEnabled() -> Bool
  @available(OSX 10.7, *)
  func trackSwipeEventWith(options: NSEventSwipeTrackingOptions = [], dampenAmountThresholdMin minDampenThreshold: CGFloat, max maxDampenThreshold: CGFloat, usingHandler trackingHandler: (CGFloat, NSEventPhase, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  class func startPeriodicEventsAfterDelay(delay: TimeInterval, withPeriod period: TimeInterval)
  class func stopPeriodicEvents()
  class func mouseEventWith(type: NSEventType, location: Point, modifierFlags flags: NSEventModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, clickCount cNum: Int, pressure: Float) -> NSEvent?
  class func keyEventWith(type: NSEventType, location: Point, modifierFlags flags: NSEventModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, characters keys: String, charactersIgnoringModifiers ukeys: String, isARepeat flag: Bool, keyCode code: UInt16) -> NSEvent?
  class func enterExitEvent(type: NSEventType, location: Point, modifierFlags flags: NSEventModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, trackingNumber tNum: Int, userData data: UnsafeMutablePointer<Void>) -> NSEvent?
  class func otherEventWith(type: NSEventType, location: Point, modifierFlags flags: NSEventModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, subtype: Int16, data1 d1: Int, data2 d2: Int) -> NSEvent?
  class func mouseLocation() -> Point
  @available(OSX 10.6, *)
  class func modifierFlags() -> NSEventModifierFlags
  @available(OSX 10.6, *)
  class func pressedMouseButtons() -> Int
  @available(OSX 10.6, *)
  class func doubleClickInterval() -> TimeInterval
  @available(OSX 10.6, *)
  class func keyRepeatDelay() -> TimeInterval
  @available(OSX 10.6, *)
  class func keyRepeatInterval() -> TimeInterval
  @available(OSX 10.6, *)
  class func addGlobalMonitorForEventsMatching(mask: NSEventMask, handler block: (NSEvent) -> Void) -> AnyObject?
  @available(OSX 10.6, *)
  class func addLocalMonitorForEventsMatching(mask: NSEventMask, handler block: (NSEvent) -> NSEvent?) -> AnyObject?
  @available(OSX 10.6, *)
  class func removeMonitor(eventMonitor: AnyObject)
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var NSUpArrowFunctionKey: Int { get }
var NSDownArrowFunctionKey: Int { get }
var NSLeftArrowFunctionKey: Int { get }
var NSRightArrowFunctionKey: Int { get }
var NSF1FunctionKey: Int { get }
var NSF2FunctionKey: Int { get }
var NSF3FunctionKey: Int { get }
var NSF4FunctionKey: Int { get }
var NSF5FunctionKey: Int { get }
var NSF6FunctionKey: Int { get }
var NSF7FunctionKey: Int { get }
var NSF8FunctionKey: Int { get }
var NSF9FunctionKey: Int { get }
var NSF10FunctionKey: Int { get }
var NSF11FunctionKey: Int { get }
var NSF12FunctionKey: Int { get }
var NSF13FunctionKey: Int { get }
var NSF14FunctionKey: Int { get }
var NSF15FunctionKey: Int { get }
var NSF16FunctionKey: Int { get }
var NSF17FunctionKey: Int { get }
var NSF18FunctionKey: Int { get }
var NSF19FunctionKey: Int { get }
var NSF20FunctionKey: Int { get }
var NSF21FunctionKey: Int { get }
var NSF22FunctionKey: Int { get }
var NSF23FunctionKey: Int { get }
var NSF24FunctionKey: Int { get }
var NSF25FunctionKey: Int { get }
var NSF26FunctionKey: Int { get }
var NSF27FunctionKey: Int { get }
var NSF28FunctionKey: Int { get }
var NSF29FunctionKey: Int { get }
var NSF30FunctionKey: Int { get }
var NSF31FunctionKey: Int { get }
var NSF32FunctionKey: Int { get }
var NSF33FunctionKey: Int { get }
var NSF34FunctionKey: Int { get }
var NSF35FunctionKey: Int { get }
var NSInsertFunctionKey: Int { get }
var NSDeleteFunctionKey: Int { get }
var NSHomeFunctionKey: Int { get }
var NSBeginFunctionKey: Int { get }
var NSEndFunctionKey: Int { get }
var NSPageUpFunctionKey: Int { get }
var NSPageDownFunctionKey: Int { get }
var NSPrintScreenFunctionKey: Int { get }
var NSScrollLockFunctionKey: Int { get }
var NSPauseFunctionKey: Int { get }
var NSSysReqFunctionKey: Int { get }
var NSBreakFunctionKey: Int { get }
var NSResetFunctionKey: Int { get }
var NSStopFunctionKey: Int { get }
var NSMenuFunctionKey: Int { get }
var NSUserFunctionKey: Int { get }
var NSSystemFunctionKey: Int { get }
var NSPrintFunctionKey: Int { get }
var NSClearLineFunctionKey: Int { get }
var NSClearDisplayFunctionKey: Int { get }
var NSInsertLineFunctionKey: Int { get }
var NSDeleteLineFunctionKey: Int { get }
var NSInsertCharFunctionKey: Int { get }
var NSDeleteCharFunctionKey: Int { get }
var NSPrevFunctionKey: Int { get }
var NSNextFunctionKey: Int { get }
var NSSelectFunctionKey: Int { get }
var NSExecuteFunctionKey: Int { get }
var NSUndoFunctionKey: Int { get }
var NSRedoFunctionKey: Int { get }
var NSFindFunctionKey: Int { get }
var NSHelpFunctionKey: Int { get }
var NSModeSwitchFunctionKey: Int { get }
