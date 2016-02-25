
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var valid: Bool { get }
  func setDelegate(_ anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func scheduleInRunLoop(_ runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(_ runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBeforeDate(_ limitDate: NSDate, components components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func sendBeforeDate(_ limitDate: NSDate, msgid msgID: Int, components components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
}
class NSMachPort : NSPort {
  class func portWithMachPort(_ machPort: UInt32) -> NSPort
  init(machPort machPort: UInt32)
  @available(iOS 2.0, *)
  class func portWithMachPort(_ machPort: UInt32, options f: NSMachPortOptions) -> NSPort
  @available(iOS 2.0, *)
  init(machPort machPort: UInt32, options f: NSMachPortOptions)
  var machPort: UInt32 { get }
}
@available(iOS 2.0, *)
struct NSMachPortOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: NSMachPortOptions { get }
  static var DeallocateSendRight: NSMachPortOptions { get }
  static var DeallocateReceiveRight: NSMachPortOptions { get }
}
protocol NSMachPortDelegate : NSPortDelegate {
  optional func handleMachMessage(_ msg: UnsafeMutablePointer<Void>)
}
class NSMessagePort : NSPort {
}
