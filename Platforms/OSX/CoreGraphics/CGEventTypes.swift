
class CGEvent {
}
@available(*, deprecated, renamed="CGEvent")
typealias CGEventRef = CGEvent
enum CGMouseButton : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Left
  case Right
  case Center
}
enum CGScrollEventUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Pixel
  case Line
}
enum CGMomentumScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Begin
  case Continue
  case End
}
enum CGScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGGesturePhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGEventFlags : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  case MaskAlphaShift
  case MaskShift
  case MaskControl
  case MaskAlternate
  case MaskCommand
  case MaskHelp
  case MaskSecondaryFn
  case MaskNumericPad
  case MaskNonCoalesced
}
enum CGEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Null
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case KeyDown
  case KeyUp
  case FlagsChanged
  case ScrollWheel
  case TabletPointer
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  case TapDisabledByTimeout
  case TapDisabledByUserInput
}
typealias CGEventTimestamp = UInt64
enum CGEventField : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MouseEventNumber
  case MouseEventClickState
  case MouseEventPressure
  case MouseEventButtonNumber
  case MouseEventDeltaX
  case MouseEventDeltaY
  case MouseEventInstantMouser
  case MouseEventSubtype
  case KeyboardEventAutorepeat
  case KeyboardEventKeycode
  case KeyboardEventKeyboardType
  case ScrollWheelEventDeltaAxis1
  case ScrollWheelEventDeltaAxis2
  case ScrollWheelEventDeltaAxis3
  case ScrollWheelEventFixedPtDeltaAxis1
  case ScrollWheelEventFixedPtDeltaAxis2
  case ScrollWheelEventFixedPtDeltaAxis3
  case ScrollWheelEventPointDeltaAxis1
  case ScrollWheelEventPointDeltaAxis2
  case ScrollWheelEventPointDeltaAxis3
  case ScrollWheelEventScrollPhase
  case ScrollWheelEventScrollCount
  case ScrollWheelEventMomentumPhase
  case ScrollWheelEventInstantMouser
  case TabletEventPointX
  case TabletEventPointY
  case TabletEventPointZ
  case TabletEventPointButtons
  case TabletEventPointPressure
  case TabletEventTiltX
  case TabletEventTiltY
  case TabletEventRotation
  case TabletEventTangentialPressure
  case TabletEventDeviceID
  case TabletEventVendor1
  case TabletEventVendor2
  case TabletEventVendor3
  case TabletProximityEventVendorID
  case TabletProximityEventTabletID
  case TabletProximityEventPointerID
  case TabletProximityEventDeviceID
  case TabletProximityEventSystemTabletID
  case TabletProximityEventVendorPointerType
  case TabletProximityEventVendorPointerSerialNumber
  case TabletProximityEventVendorUniqueID
  case TabletProximityEventCapabilityMask
  case TabletProximityEventPointerType
  case TabletProximityEventEnterProximity
  case EventTargetProcessSerialNumber
  case EventTargetUnixProcessID
  case EventSourceUnixProcessID
  case EventSourceUserData
  case EventSourceUserID
  case EventSourceGroupID
  case EventSourceStateID
  case ScrollWheelEventIsContinuous
  case MouseEventWindowUnderMousePointer
  case MouseEventWindowUnderMousePointerThatCanHandleThisEvent
}
enum CGEventMouseSubtype : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case TabletPoint
  case TabletProximity
}
enum CGEventTapLocation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case CGHIDEventTap
  case CGSessionEventTap
  case CGAnnotatedSessionEventTap
}
enum CGEventTapPlacement : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HeadInsertEventTap
  case TailAppendEventTap
}
enum CGEventTapOptions : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case ListenOnly
}
typealias CGEventMask = UInt64
typealias CGEventTapProxy = COpaquePointer
typealias CGEventTapCallBack = @convention(c) (CGEventTapProxy, CGEventType, CGEvent, UnsafeMutablePointer<Void>) -> Unmanaged<CGEvent>?
var kCGNotifyEventTapAdded: String { get }
var kCGNotifyEventTapRemoved: String { get }
struct __CGEventTapInformation {
  var eventTapID: UInt32
  var tapPoint: CGEventTapLocation
  var options: CGEventTapOptions
  var eventsOfInterest: CGEventMask
  var tappingProcess: pid_t
  var processBeingTapped: pid_t
  var enabled: Bool
  var minUsecLatency: Float
  var avgUsecLatency: Float
  var maxUsecLatency: Float
  init()
  init(eventTapID: UInt32, tapPoint: CGEventTapLocation, options: CGEventTapOptions, eventsOfInterest: CGEventMask, tappingProcess: pid_t, processBeingTapped: pid_t, enabled: Bool, minUsecLatency: Float, avgUsecLatency: Float, maxUsecLatency: Float)
}
typealias CGEventTapInformation = __CGEventTapInformation
@available(*, deprecated, renamed="CGEventSource")
typealias CGEventSourceRef = CGEventSource
class CGEventSource {
}
enum CGEventSourceStateID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Private
  case CombinedSessionState
  case HIDSystemState
}
typealias CGEventSourceKeyboardType = UInt32
