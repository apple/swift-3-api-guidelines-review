
typealias NSSocketNativeHandle = Int32
let NSPortDidBecomeInvalidNotification: String
class NSPort : NSObject, NSCopying, NSCoding {
  func invalidate()
  var valid: Bool { get }
  func setDelegate(anObject: NSPortDelegate?)
  func delegate() -> NSPortDelegate?
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  var reservedSpaceLength: Int { get }
  func sendBeforeDate(limitDate: NSDate, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  func sendBeforeDate(limitDate: NSDate, msgid msgID: Int, components: NSMutableArray?, from receivePort: NSPort?, reserved headerSpaceReserved: Int) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSPortDelegate : NSObjectProtocol {
  optional func handlePortMessage(message: NSPortMessage)
}
class NSMachPort : NSPort {
  class func portWithMachPort(machPort: UInt32) -> NSPort
  init(machPort: UInt32)
  func setDelegate(anObject: NSMachPortDelegate?)
  func delegate() -> NSMachPortDelegate?
  @available(OSX 10.5, *)
  class func portWithMachPort(machPort: UInt32, options f: NSMachPortOptions) -> NSPort
  @available(OSX 10.5, *)
  init(machPort: UInt32, options f: NSMachPortOptions)
  var machPort: UInt32 { get }
  func scheduleInRunLoop(runLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runLoop: NSRunLoop, forMode mode: String)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
struct NSMachPortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeallocateNone: NSMachPortOptions { get }
  static var DeallocateSendRight: NSMachPortOptions { get }
  static var DeallocateReceiveRight: NSMachPortOptions { get }
}
protocol NSMachPortDelegate : NSPortDelegate {
  optional func handleMachMessage(msg: UnsafeMutablePointer<Void>)
}
class NSMessagePort : NSPort {
  init()
  init?(coder aDecoder: NSCoder)
}
class NSSocketPort : NSPort {
  convenience init()
  convenience init?(TCPPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, socket sock: NSSocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: NSData)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  @NSCopying var address: NSData { get }
  var socket: NSSocketNativeHandle { get }
  init?(coder aDecoder: NSCoder)
}
