
@available(OSX 10.7, *)
struct NSTouchPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var began: NSTouchPhase { get }
  static var moved: NSTouchPhase { get }
  static var stationary: NSTouchPhase { get }
  static var ended: NSTouchPhase { get }
  static var cancelled: NSTouchPhase { get }
  static var touching: NSTouchPhase { get }
  static var any: NSTouchPhase { get }
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
  func copyWith(zone: Zone = nil) -> AnyObject
}
