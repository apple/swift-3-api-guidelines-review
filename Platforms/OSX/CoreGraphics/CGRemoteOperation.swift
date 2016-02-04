
typealias CGEventErr = CGError
typealias CGButtonCount = UInt32
typealias CGWheelCount = UInt32
typealias CGCharCode = UInt16
typealias CGKeyCode = UInt16
typealias CGScreenRefreshCallback = @convention(c) (UInt32, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
struct CGScreenUpdateOperation : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Refresh: CGScreenUpdateOperation { get }
  static var Move: CGScreenUpdateOperation { get }
  static var ReducedDirtyRectangleCount: CGScreenUpdateOperation { get }
}
struct CGScreenUpdateMoveDelta {
  var dX: Int32
  var dY: Int32
  init()
  init(dX: Int32, dY: Int32)
}
typealias CGScreenUpdateMoveCallback = @convention(c) (CGScreenUpdateMoveDelta, Int, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.0, *)
func CGWarpMouseCursorPosition(newCursorPosition: CGPoint) -> CGError
var kCGMouseDownEventMaskingDeadSwitchTimeout: Double { get }
@available(OSX 10.0, *)
func CGAssociateMouseAndMouseCursorPosition(connected: boolean_t) -> CGError
@available(OSX 10.8, *)
func CGWindowServerCreateServerPort() -> CFMachPort?
struct CGEventFilterMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PermitLocalMouseEvents: CGEventFilterMask { get }
  static var PermitLocalKeyboardEvents: CGEventFilterMask { get }
  static var PermitSystemDefinedEvents: CGEventFilterMask { get }
}
enum CGEventSuppressionState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EventSuppressionStateSuppressionInterval
  case EventSuppressionStateRemoteMouseDrag
  case NumberOfEventSuppressionStates
}
typealias CGRectCount = UInt32
