
@available(OSX 10.7, *)
struct NSTouchPhase : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Began: NSTouchPhase { get }
  static var Moved: NSTouchPhase { get }
  static var Stationary: NSTouchPhase { get }
  static var Ended: NSTouchPhase { get }
  static var Cancelled: NSTouchPhase { get }
  static var Touching: NSTouchPhase { get }
  static var Any: NSTouchPhase { get }
}
@available(OSX 10.6, *)
class NSTouch : NSObject, NSCopying {
  var identity: protocol<NSCopying, NSObjectProtocol> { get }
  var phase: NSTouchPhase { get }
  var normalizedPosition: NSPoint { get }
  var resting: Bool { get }
  var device: AnyObject? { get }
  var deviceSize: NSSize { get }
  @available(OSX 10.6, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
