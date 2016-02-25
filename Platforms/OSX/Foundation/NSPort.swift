
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
  optional func handlePortMessage(_ message: NSPortMessage)
}
class NSMachPort : NSPort {
  class func portWithMachPort(_ machPort: UInt32) -> NSPort
  init(machPort machPort: UInt32)
  @available(OSX 10.5, *)
  class func portWithMachPort(_ machPort: UInt32, options f: NSMachPortOptions) -> NSPort
  @available(OSX 10.5, *)
  init(machPort machPort: UInt32, options f: NSMachPortOptions)
  var machPort: UInt32 { get }
}
@available(OSX 10.5, *)
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
class NSSocketPort : NSPort {
  convenience init?(TCPPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol protocol: Int32, address address: NSData)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol protocol: Int32, socket sock: NSSocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol protocol: Int32, address address: NSData)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  @NSCopying var address: NSData { get }
  var socket: NSSocketNativeHandle { get }
}
