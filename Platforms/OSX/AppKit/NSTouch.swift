
@available(OSX 10.7, *)
struct NSTouchPhase : OptionSetType {
  init(rawValue: UInt)
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
class NSTouch : Object, Copying {
  var identity: protocol<Copying, ObjectProtocol> { get }
  var phase: NSTouchPhase { get }
  var normalizedPosition: Point { get }
  var isResting: Bool { get }
  var device: AnyObject? { get }
  var deviceSize: Size { get }
  init()
  @available(OSX 10.6, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
