
typealias SocketNativeHandle = Int32
let portDidBecomeInvalidNotification: String
class Port : Object, Copying, Coding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(anObject: PortDelegate?)
  func delegate() -> PortDelegate?
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBefore(limitDate: Date, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  func sendBefore(limitDate: Date, msgid msgID: Int, components: MutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol PortDelegate : ObjectProtocol {
}
class MachPort : Port {
  class func portWith(machPort machPort: UInt32) -> Port
  init(machPort: UInt32)
  func setDelegate(anObject: MachPortDelegate?)
  func delegate() -> MachPortDelegate?
  @available(iOS 2.0, *)
  class func portWith(machPort machPort: UInt32, options f: MachPortOptions = []) -> Port
  @available(iOS 2.0, *)
  init(machPort: UInt32, options f: MachPortOptions = [])
  var machPort: UInt32 { get }
  func scheduleIn(runLoop: RunLoop, forMode mode: String)
  func removeFrom(runLoop: RunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: Coder)
}
@available(iOS 2.0, *)
struct MachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var deallocateNone: MachPortOptions { get }
  static var deallocateSendRight: MachPortOptions { get }
  static var deallocateReceiveRight: MachPortOptions { get }
}
protocol MachPortDelegate : PortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class MessagePort : Port {
  init()
  init?(coder aDecoder: Coder)
}
